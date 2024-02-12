using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Text;

namespace MiniORM
{
    public abstract class DbContext
    {
        private readonly DatabaseConnection databaseConnection;

        private readonly Dictionary<Type, PropertyInfo> dbSetProperties;

        internal static readonly Type[] AllowedSqlTypes =
        {
            typeof(string),
            typeof(int),
            typeof(uint),
            typeof(long),
            typeof(ulong),
            typeof(decimal),
            typeof(bool),
            typeof(DateTime)
        };

        protected DbContext(string connectionString)
        {
            databaseConnection = new DatabaseConnection(connectionString);

            dbSetProperties = DiscoverDbSets();

            using (new ConnectionManager(databaseConnection))
            {
                InitializeDbSets();
            }

            MapAllRelations();
        }

        public void SaveChanges()
        {
            var dbSets = dbSetProperties
                .Select(pi => pi.Value.GetValue(this))
                .ToArray();

            foreach (IEnumerable<object> dbSet in dbSets)
            {
                var invalidEntities = dbSet
                    .Where(e => !IsObjectValid(e))
                    .ToArray();

                if (invalidEntities.Any())
                {
                    throw new InvalidOperationException($"{invalidEntities.Length} Invalid Entities found in {dbSet.GetType().Name}!");
                }
            }

            using (new ConnectionManager(databaseConnection))
            {
                using (var transaction = databaseConnection.BeginTransaction())
                {
                    foreach (var dbSet in dbSets)
                    {
                        var dbSetType = dbSet.GetType().GetGenericArguments().First();

                        var persistGenericMethod = typeof(DbContext)
                            .GetMethod("Persist", BindingFlags.Instance | BindingFlags.NonPublic)
                            .MakeGenericMethod(dbSetType);

                        try
                        {
                            persistGenericMethod.Invoke(this, new object[] { dbSet });
                        }
                        catch (TargetInvocationException targetInvocationException)
                        {
                            throw targetInvocationException.InnerException;
                        }
                        catch (InvalidOperationException)
                        {
                            transaction.Rollback();
                            throw;
                        }
                        catch (SqlException)
                        {
                            transaction.Rollback();
                            throw;
                        }
                    }

                    transaction.Commit();
                }
            }
        }

        private Dictionary<Type, PropertyInfo> DiscoverDbSets()
        {
            var discoveredDbSets = GetType().GetProperties()
                .Where(pi => pi.PropertyType.GetGenericTypeDefinition() == typeof(DbSet<>))
                .ToDictionary(pi => pi.PropertyType.GetGenericArguments().First(), pi => pi);

            return discoveredDbSets;
        }

        private void InitializeDbSets()
        {
            foreach (var dbSetProperty in dbSetProperties)
            {
                var dbSetType = dbSetProperty.Key;
                var dbSetPropertyInfo = dbSetProperty.Value;

                var populateDbSetGenericMethod = typeof(DbContext)
                    .GetMethod("PopulateDbSet", BindingFlags.Instance | BindingFlags.NonPublic)
                    .MakeGenericMethod(dbSetType);

                populateDbSetGenericMethod.Invoke(this, new object[] { dbSetPropertyInfo });
            }
        }

        private void PopulateDbSet<TEntity>(PropertyInfo dbSetPropertyInfo) where TEntity : class, new()
        {
            var loadedTableEntities = LoadTableEntities<TEntity>();

            var dbSetInstance = new DbSet<TEntity>(loadedTableEntities);

            ReflectionHelper.ReplaceBackingField(this, dbSetPropertyInfo.Name, dbSetInstance);
        }

        private IEnumerable<TEntity> LoadTableEntities<TEntity>() where TEntity : class
        {
            var tableType = typeof(TEntity);

            var columns = GetEntityColumnNames(tableType);

            var tableName = GetTableName(tableType);

            var fetchedRows = databaseConnection.FetchResultSet<TEntity>(tableName, columns).ToArray();

            return fetchedRows;
        }

        private string[] GetEntityColumnNames(Type tableType)
        {
            var tableName = GetTableName(tableType);

            var dbColumns = databaseConnection.FetchColumnNames(tableName);

            var columns = tableType.GetProperties()
                .Where(pi => dbColumns.Contains(pi.Name) &&
                             !pi.HasAttribute<NotMappedAttribute>() &&
                             AllowedSqlTypes.Contains(pi.PropertyType))
                .Select(pi => pi.Name)
                .ToArray();

            return columns;
        }

        private string GetTableName(Type tableType)
        {
            string tableName;

            var tableAttribute = ((TableAttribute)Attribute.GetCustomAttribute(tableType, typeof(TableAttribute)));

            if (tableAttribute == null)
            {
                tableName = dbSetProperties[tableType].Name;
            }
            else
            {
                tableName = tableAttribute.Name;
            }

            return tableName;
        }

        private void MapAllRelations()
        {
            foreach (var dbSetProperty in dbSetProperties)
            {
                var dbSetType = dbSetProperty.Key;

                var mapRelationsGenericMethod = typeof(DbContext)
                    .GetMethod("MapRelations", BindingFlags.Instance | BindingFlags.NonPublic)
                    .MakeGenericMethod(dbSetType);

                var dbSet = dbSetProperty.Value.GetValue(this);

                mapRelationsGenericMethod.Invoke(this, new[] { dbSet });
            }
        }

        private void MapRelations<TEntity>(DbSet<TEntity> dbSet) where TEntity : class, new()
        {
            var entityType = typeof(TEntity);

            MapNavigationProperties(dbSet);

            var collections = entityType
                .GetProperties()
                .Where(pi =>
                    pi.PropertyType.IsGenericType &&
                    pi.PropertyType.GetGenericTypeDefinition() == typeof(ICollection<>))
                .ToArray();

            foreach (var collection in collections)
            {
                var collectionType = collection.PropertyType.GenericTypeArguments.First();

                var mapCollectionGenericMethod = typeof(DbContext)
                    .GetMethod("MapCollection", BindingFlags.Instance | BindingFlags.NonPublic)
                    .MakeGenericMethod(entityType, collectionType);

                mapCollectionGenericMethod.Invoke(this, new object[] { dbSet, collection });
            }
        }

        private void MapNavigationProperties<TEntity>(DbSet<TEntity> dbSet) where TEntity : class, new()
        {
            var entityType = typeof(TEntity);

            var foreignKeys = entityType.GetProperties()
                .Where(pi => pi.HasAttribute<ForeignKeyAttribute>())
                .ToArray();

            foreach (var foreignKey in foreignKeys)
            {
                var navigationPropertyName = foreignKey.GetCustomAttribute<ForeignKeyAttribute>().Name;
                var navigationProperty = entityType.GetProperty(navigationPropertyName);

                var navigationDbSet = dbSetProperties[navigationProperty.PropertyType]
                    .GetValue(this);

                var navigationPrimaryKey = navigationProperty.PropertyType.GetProperties()
                    .First(pi => pi.HasAttribute<KeyAttribute>());

                foreach (var entity in dbSet)
                {
                    var foreignKeyValue = foreignKey.GetValue(entity);

                    var navigationPropertyValue = ((IEnumerable<object>)navigationDbSet)
                        .First(currentNavigationProperty =>
                            navigationPrimaryKey.GetValue(currentNavigationProperty).Equals(foreignKeyValue));

                    navigationProperty.SetValue(entity, navigationPropertyValue);
                }
            }
        }

        private void MapCollection<TDbSet, TCollection>(DbSet<TDbSet> dbSet, PropertyInfo collectionProperty)
            where TDbSet : class, new() where TCollection : class, new()
        {
            var entityType = typeof(TDbSet);
            var collectionType = typeof(TCollection);

            var primaryKeys = collectionType.GetProperties()
                .Where(pi => pi.HasAttribute<KeyAttribute>())
                .ToArray();

            var primaryKey = primaryKeys.First();
            var foreignKey = entityType.GetProperties()
                .First(pi => pi.HasAttribute<KeyAttribute>());

            var isRelationshipManyToMany = primaryKeys.Length >= 2;

            if (isRelationshipManyToMany)
            {
                var properties = collectionType.GetProperties();

                primaryKey = collectionType.GetProperties()
                    .Where(pi => pi.GetCustomAttribute<ForeignKeyAttribute>() != null)
                    .First(pi => collectionType.GetProperty(pi.GetCustomAttribute<ForeignKeyAttribute>().Name)
                                                .PropertyType == entityType);
            }

            var navigationDbSet = (DbSet<TCollection>)dbSetProperties[collectionType].GetValue(this);

            foreach (var entity in dbSet)
            {
                var primaryKeyValue = foreignKey.GetValue(entity);

                var navigationEntities = navigationDbSet
                    .Where(navigationEntity => primaryKey.GetValue(navigationEntity).Equals(primaryKeyValue))
                    .ToArray();

                ReflectionHelper.ReplaceBackingField(entity, collectionProperty.Name, navigationEntities);
            }
        }

        private void Persist<TEntity>(DbSet<TEntity> dbSet) where TEntity : class, new()
        {
            var tableName = GetTableName(typeof(TEntity));

            var columns = databaseConnection.FetchColumnNames(tableName).ToArray();

            if (dbSet.ChangeTracker.AddedEntities.Any())
            {
                databaseConnection.InsertEntities(dbSet.ChangeTracker.AddedEntities, tableName, columns); ;
            }

            var modifiedEntities = dbSet.ChangeTracker.GetModifiedEntities(dbSet).ToArray();

            if (modifiedEntities.Any())
            {
                databaseConnection.UpdateEntities(modifiedEntities, tableName, columns);
            }

            if (dbSet.ChangeTracker.RemovedEntities.Any())
            {
                databaseConnection.DeleteEntities(dbSet.ChangeTracker.RemovedEntities, tableName, columns);
            }
        }

        private static bool IsObjectValid(object entityToValidate)
        {
            var validationContext = new ValidationContext(entityToValidate);
            var validationErrors = new List<ValidationResult>();

            var validationResult = Validator.TryValidateObject(entityToValidate, validationContext, validationErrors, validateAllProperties: true);

            return validationResult;
        }
    }
}
