using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ORMFramework
{
    public class DbSet<TEntity> : ICollection<TEntity> where TEntity : class, new()
    {
        public DbSet(IEnumerable<TEntity> entities)
        {
            Entities = entities.ToList();
            ChangeTracker = new ChangeTracker<TEntity>(entities);
        }

        internal ChangeTracker<TEntity> ChangeTracker { get; set; }

        internal IList<TEntity> Entities { get; set; }

        public int Count => Entities.Count;

        public bool IsReadOnly => Entities.IsReadOnly;

        public void Add(TEntity entity)
        {
            if (entity == null)
            {
                throw new ArgumentNullException(nameof(entity), "Entity cannot be null!");
            }

            Entities.Add(entity);

            ChangeTracker.Add(entity);
        }

        public void Clear()
        {
            while (Entities.Any())
            {
                var entityToRemove = Entities.First();
                Remove(entityToRemove);
            }
        }

        public bool Contains(TEntity entity) => Entities.Contains(entity);

        public void CopyTo(TEntity[] array, int arrayIndex) => Entities.CopyTo(array, arrayIndex);

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }

        public IEnumerator<TEntity> GetEnumerator()
        {
            return Entities.GetEnumerator();
        }

        public bool Remove(TEntity entity)
        {
            if (entity == null)
            {
                throw new ArgumentNullException(nameof(entity), "entity cannot be null!");
            }

            bool isEntityRemovedSuccessfully = Entities.Remove(entity);

            if (isEntityRemovedSuccessfully)
            {
                ChangeTracker.Remove(entity);
            }

            return isEntityRemovedSuccessfully;
        }

        public void RemoveRange(IEnumerable<TEntity> entities)
        {
            foreach (var entity in entities.ToArray())
            {
                Remove(entity);
            }
        }
    } 
}
