using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;
using System.Text;

namespace ORMFramework
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
        }

        public void SaveChanges()
        {
            var dbSets = dbSetProperties
                .Select(pi => pi.Value.GetValue(this))
                .ToArray();

            foreach (IEnumerable<object> dbSet in dbSets)
            {
                var invalidEntities = dbSet
                    .Where(entity => !IsObjectValid(entity))
                    .ToArray();

                if (invalidEntities.Any())
                {
                    throw new InvalidOperationException($"{invalidEntities.Length} Invalid Entities found in {dbSet.GetType().Name}!");
                }
            }
        }

        private static bool IsObjectValid(object objectToValidate)
        {
            var validationContext = new ValidationContext(objectToValidate);
            var validationErrors = new List<ValidationResult>();

            var validationResult = Validator.TryValidateObject(objectToValidate, validationContext, validationErrors, validateAllProperties: true);

            return validationResult;
        }
    }
}
