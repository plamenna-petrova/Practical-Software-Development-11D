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

        public ChangeTracker(IEnumerable<T> entitiesToTrack)
        {
            addedEntities = new List<T>();
            removedEntities = new List<T>();

            allEntities = CloneEntities(entitiesToTrack);
        }

        public IReadOnlyCollection<T> AllEntities => allEntities.AsReadOnly();

        public IReadOnlyCollection<T> AddedEntities => addedEntities.AsReadOnly();

        public IReadOnlyCollection<T> RemovedEntities => removedEntities.AsReadOnly();

        public void Add (T entity) => addedEntities.Add(entity);

        public void Remove(T entity) => removedEntities.Remove(entity);

        public IEnumerable<T> GetModifiedEntities(DbSet<T> dbSet)
        {
            var modifiedEntities = new List<T>();

            var primaryKeys = typeof(T).GetProperties()
                .Where(pi => pi.HasAttribute<KeyAttribute>())
                .ToArray();

            foreach (var proxyEntity in AllEntities)
            {
                var proxyEntityPrimaryKeyValues = GetPrimaryKeyValues(primaryKeys, proxyEntity).ToArray();

                var entityInDbSet = dbSet.Entities.Single(e => GetPrimaryKeyValues(primaryKeys, e).SequenceEqual(proxyEntityPrimaryKeyValues));

                if (IsEntityModified(entityInDbSet, proxyEntity))
                {
                    modifiedEntities.Add(entityInDbSet);
                }
            }

            return modifiedEntities;
        }

        private static bool IsEntityModified(T originalEntity, T proxyEntity)
        {
            var monitoredProperties = typeof(T).GetProperties()
                .Where(pi => DbContext.AllowedSqlTypes.Contains(pi.PropertyType));

            var modifiedProperties = monitoredProperties
                .Where(pi => !Equals(pi.GetValue(originalEntity), pi.GetValue(proxyEntity)))
                .ToArray();

            bool isEntityModified = modifiedProperties.Any();

            return isEntityModified;
        }

        private static List<T> CloneEntities(IEnumerable<T> sourceEntities)
        {
            var clonedEntities = new List<T>();

            var propertiesToClone = typeof(T).GetProperties()
                .Where(pi => DbContext.AllowedSqlTypes.Contains(pi.PropertyType))
                .ToList();

            foreach (var sourceEntity in sourceEntities) 
            {
                var entityToClone = Activator.CreateInstance<T>();

                foreach (var propertyToClone in propertiesToClone)
                {
                    var propertyValue = propertyToClone.GetValue(sourceEntity);
                    propertyToClone.SetValue(entityToClone, propertyValue);
                }

                clonedEntities.Add(entityToClone);
            }

            return clonedEntities;
        }

        private static IEnumerable<object> GetPrimaryKeyValues(IEnumerable<PropertyInfo> primaryKeys, T entity)
        {
            return primaryKeys.Select(pk => pk.GetValue(entity));
        }
    }
}
