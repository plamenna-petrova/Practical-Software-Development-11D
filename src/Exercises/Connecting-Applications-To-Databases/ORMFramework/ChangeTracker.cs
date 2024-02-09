using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;
using System.Text;

namespace ORMFramework
{
    internal class ChangeTracker<T> where T : class, new()
    {
        private readonly List<T> allEntities;

        private readonly List<T> addedEntities;

        private readonly List<T> removedEntities;

        public ChangeTracker(IEnumerable<T> entities)
        {
            addedEntities = new List<T>();
            removedEntities = new List<T>();
            allEntities = CloneEntities(entities);
        }

        public IReadOnlyCollection<T> AllEntities => allEntities.AsReadOnly();

        public IReadOnlyCollection<T> AddedEntities => addedEntities.AsReadOnly();

        public IReadOnlyCollection<T> RemovedEntities => removedEntities.AsReadOnly();

        public void Add(T entity) => allEntities.Add(entity);

        public void Remove(T entity) => removedEntities.Add(entity);

        public IEnumerable<T> GetModifiedEntities(DbSet<T> dbSet)
        {
            var modifiedEntities = new List<T>();

            var primaryKeys = typeof(T).GetProperties()
                .Where(pi => Attribute.IsDefined(pi, typeof(KeyAttribute)))
                .ToArray();

            foreach (var proxyEntity in AllEntities)
            {
                var primaryKeyValues = GetPrimaryKeyValues(primaryKeys, proxyEntity).ToArray();

                var entity = dbSet.Entities.Single(e => GetPrimaryKeyValues(primaryKeys, e).SequenceEqual(primaryKeyValues));

                var isEntityModified = IsEntityModified(proxyEntity, entity);

                if (isEntityModified)
                {
                    modifiedEntities.Add(proxyEntity);
                }
            }

            return modifiedEntities;
        }

        private static List<T> CloneEntities(IEnumerable<T> entities)
        {
            var entitiesToClone = new List<T>();

            var propertiesToClone = typeof(T).GetProperties()
                .Where(pi => DbContext.AllowedSqlTypes.Contains(pi.PropertyType))
                .ToArray();

            foreach (var entity in entities) 
            {
                var entityToClone = Activator.CreateInstance<T>();

                foreach (var propertyToClone in propertiesToClone)
                {
                    var propertyValue = propertyToClone.GetValue(entity);
                    propertyToClone.SetValue(entityToClone, propertyValue);
                }

                entitiesToClone.Add(entity);
            }

            return entitiesToClone;
        }

        private static bool IsEntityModified(T entity, T proxyEntity)
        {
            var monitoredProperties = typeof(T).GetProperties()
                .Where(pi => DbContext.AllowedSqlTypes.Contains(pi.PropertyType));

            var modifiedProperties = monitoredProperties
                .Where(pi => !Equals(pi.GetValue(entity), pi.GetValue(proxyEntity)))
                .ToArray();

            bool isEntityModified = modifiedProperties.Any();

            return isEntityModified;
        }

        private static IEnumerable<object> GetPrimaryKeyValues(IEnumerable<PropertyInfo> primaryKeys, T entity)
        {
            return primaryKeys.Select(pk => pk.GetValue(entity));
        }
    }
}
