using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace MiniORM
{
    internal class ConnectionManager : IDisposable
    {
        private readonly DatabaseConnection databaseConnection;

        public ConnectionManager(DatabaseConnection databaseConnection)
        {
            this.databaseConnection = databaseConnection;
            this.databaseConnection.Open();
            this.databaseConnection.UseDatabase();
        }

        public void Dispose()
        {
            databaseConnection.Close();
        }
    }
}
