using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace MiniORM
{
    internal class DatabaseConnection
    {
        private readonly SqlConnection sqlConnection;

        private SqlTransaction sqlTransaction;

        public DatabaseConnection(string connectionString)
        {
            sqlConnection = new SqlConnection(connectionString);
        }

        public void Open() => sqlConnection.Open();

        public void Close() => sqlConnection.Close();

        public SqlTransaction BeginTransaction()
        {
            sqlTransaction = sqlConnection.BeginTransaction();
            return sqlTransaction;
        }

        public void UseDatabase()
        {
            string databaseName = sqlConnection.ConnectionString.Split(new char[] { ';', '=' })[3];

            using (SqlCommand useDatabaseSqlCommand = CreateSqlCommand($"USE {databaseName}"))
            {
                useDatabaseSqlCommand.ExecuteScalar();
            }
        }

        public int ExecuteNonQuery(string queryString, params SqlParameter[] sqlParameters)
        {
            using (SqlCommand sqlNonQueryCommand = CreateSqlCommand(queryString, sqlParameters))
            {
                int executedNonQueryResult = sqlNonQueryCommand.ExecuteNonQuery();

                return executedNonQueryResult;
            }
        }

        public IEnumerable<string> FetchColumnNames(string tableName)
        {
            var rows = new List<string>();

            string fetchColumnNamesQueryString = $@"SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '{tableName}';";

            using (SqlCommand fetchColumnNamesSqlCommand = CreateSqlCommand(fetchColumnNamesQueryString))
            {
                using (SqlDataReader sqlDataReader = fetchColumnNamesSqlCommand.ExecuteReader())
                {
                    while (sqlDataReader.Read())
                    {
                        string column = sqlDataReader.GetString(0);

                        rows.Add(column);
                    }
                }
            }

            return rows;
        }

        public IEnumerable<T> ExecuteQuery<T>(string queryString)
        {
            var rows = new List<T>();

            using (SqlCommand sqlCommand = new SqlCommand(queryString, sqlConnection, sqlTransaction))
            {
                using (SqlDataReader sqlDataReader = sqlCommand.ExecuteReader())
                {
                    while (sqlDataReader.Read())
                    {
                        var columnValues = new object[sqlDataReader.FieldCount];
                        sqlDataReader.GetValues(columnValues);

                        var fieldValue = sqlDataReader.GetFieldValue<T>(0);

                        rows.Add(fieldValue);
                    }
                }
            }

            return rows;
        }

        public IEnumerable<T> FetchResultSet<T>(string tableName, params string[] columnNames)
        {
            var rows = new List<T>();

            var escapedColumns = string.Join(", ", columnNames.Select(EscapeColumn));

            var fetchResultSetQueryString = $@"SELECT {escapedColumns} FROM {tableName}";

            using (SqlCommand fetchResultSetSqlCommand = CreateSqlCommand(fetchResultSetQueryString))
            {
                using (SqlDataReader sqlDataReader = fetchResultSetSqlCommand.ExecuteReader())
                {
                    while (sqlDataReader.Read())
                    {
                        var columnValues = new object[sqlDataReader.FieldCount];
                        sqlDataReader.GetValues(columnValues);

                        var mappedObjectByColumns = MapColumnsToObject<T>(columnNames, columnValues);
                        rows.Add(mappedObjectByColumns);
                    }
                }
            }

            return rows;
        }

        public void InsertEntities<T>(IEnumerable<T> entities, string tableName, string[] columns) where T : class
        {
            var identityColumns = GetIdentityColumns(tableName);

            var columnsToInsert = columns.Except(identityColumns).ToArray();

            var escapedColumns = columnsToInsert.Select(EscapeColumn).ToArray();

            var rowValues = entities
                .Select(e => columnsToInsert
                    .Select(col => e.GetType().GetProperty(col).GetValue(e))
                    .ToArray())
                .ToArray();

            var rowParameterNames = Enumerable.Range(1, rowValues.Length)
                .Select(i => columnsToInsert.Select(col => col + i).ToArray())
                .ToArray();

            var sqlColumns = string.Join(", ", escapedColumns);

            var sqlRows = string.Join(", ",
                rowParameterNames.Select(rpn =>
                    string.Format("({0})",
                        string.Join(", ", rpn.Select(x => $"@{x}")))));

            var insertEntitiesQueryString = string.Format(
                "INSERT INTO {0} ({1}) VALUES {2}",
                tableName,
                sqlColumns,
                sqlRows
            );

            var sqlParameters = rowParameterNames
                .Zip(rowValues, (parameters, values) =>
                    parameters.Zip(values, (parameter, value) =>
                        new SqlParameter(parameter, value ?? DBNull.Value)))
                .SelectMany(p => p)
                .ToArray();

            var insertedRows = ExecuteNonQuery(insertEntitiesQueryString, sqlParameters);

            if (insertedRows != entities.Count())
            {
                throw new InvalidOperationException($"Could not insert {entities.Count() - insertedRows} rows.");
            }
        }

        public void UpdateEntities<T>(IEnumerable<T> modifiedEntities, string tableName, string[] columns) where T : class
        {
            var identityColumns = GetIdentityColumns(tableName);

            var columnsToUpdate = columns.Except(identityColumns).ToArray();

            var primaryKeyProperties = typeof(T).GetProperties()
                .Where(pi => pi.HasAttribute<KeyAttribute>())
                .ToArray();

            foreach (var modifiedEntity in modifiedEntities)
            {
                var primaryKeyValues = primaryKeyProperties
                    .Select(pkprop => pkprop.GetValue(modifiedEntity))
                    .ToArray();

                var primaryKeysSqlParameters = primaryKeyProperties
                    .Zip(primaryKeyValues, (parameter, value) => new SqlParameter(parameter.Name, value))
                    .ToArray();

                var rowValues = columnsToUpdate
                    .Select(col => modifiedEntity.GetType().GetProperty(col).GetValue(modifiedEntity) ?? DBNull.Value)
                    .ToArray();

                var columnsSqlParameters = columnsToUpdate
                    .Zip(rowValues, (parameter, value) => new SqlParameter(parameter, value))
                    .ToArray();

                var columnsQueryString = string.Join(", ", columnsToUpdate.Select(col => $"{col} = @{col}"));

                var primaryKeysQueryString = string.Join(" AND ",
                    primaryKeyProperties.Select(pk => $"{pk.Name} = @{pk.Name}"));

                var updateEntitiesQueryString = string.Format(
                    "UPDATE {0} SET {1} WHERE {2}",
                    tableName,
                    columnsQueryString,
                    primaryKeysQueryString
                );

                var updatedRows = ExecuteNonQuery(updateEntitiesQueryString, columnsSqlParameters.Concat(primaryKeysSqlParameters).ToArray());

                if (updatedRows != 1)
                {
                    throw new InvalidOperationException($"Update for table {tableName} failed.");
                }
            }
        }

        public void DeleteEntities<T>(IEnumerable<T> entitiesToDelete, string tableName, string[] columns) where T : class
        {
            var primaryKeyProperties = typeof(T).GetProperties()
                .Where(pi => pi.HasAttribute<KeyAttribute>())
                .ToArray();

            foreach (var entityToDelete in entitiesToDelete)
            {
                var primaryKeyValues = primaryKeyProperties
                    .Select(pkprop => pkprop.GetValue(entityToDelete))
                    .ToArray();

                var primaryKeySqlParameters = primaryKeyProperties
                    .Zip(primaryKeyValues, (parameter, value) => new SqlParameter(parameter.Name, value))
                    .ToArray();

                var primaryKeysQueryString = string.Join(" AND ",
                    primaryKeyProperties.Select(pk => $"{pk.Name} = @{pk.Name}"));

                var deleteEntitiesQueryString = string.Format(
                    "DELETE FROM {0} WHERE {1}",
                    tableName,
                    primaryKeysQueryString
                );

                var deletedRows = ExecuteNonQuery(deleteEntitiesQueryString, primaryKeySqlParameters);

                if (deletedRows != 1)
                {
                    throw new InvalidOperationException($"Delete for {tableName} failed.");
                }
            }
        }

        private SqlCommand CreateSqlCommand(string queryString, params SqlParameter[] sqlParameters)
        {
            SqlCommand sqlCommand = new SqlCommand(queryString, sqlConnection, sqlTransaction);

            foreach (var sqlParameter in sqlParameters)
            {
                sqlCommand.Parameters.Add(sqlParameter);
            }

            return sqlCommand;
        }

        private IEnumerable<string> GetIdentityColumns(string tableName)
        {
            const string IdentityColumnsQueryString = @"SELECT COLUMN_NAME FROM (SELECT COLUMN_NAME, COLUMNPROPERTY(OBJECT_ID(TABLE_NAME), COLUMN_NAME, 'IsIdentity') AS IsIdentity FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = '{0}') AS IdentitySpecs WHERE IsIdentity = 1";

            var identityColumnsParametrizedQueryString = string.Format(IdentityColumnsQueryString, tableName);

            var retrievedIdentityColumns = ExecuteQuery<string>(identityColumnsParametrizedQueryString);

            return retrievedIdentityColumns;
        }

        private static string EscapeColumn(string column)
        {
            var escapedColumn = $"[{column}]";
            return escapedColumn;
        }

        private static T MapColumnsToObject<T>(string[] columnNames, object[] columns)
        {
            var targetObject = Activator.CreateInstance<T>();

            for (int i = 0; i < columns.Length; i++)
            {
                var columnName = columnNames[i];
                var columnValue = columns[i];

                if (columnValue is DBNull)
                {
                    columnValue = null;
                }

                var columnRelatedPropertyInfo = typeof(T).GetProperty(columnName);
                columnRelatedPropertyInfo.SetValue(targetObject, columnValue);
            }

            return targetObject;
        }
    }
}
