using System;
using System.Collections.Generic;
using System.Text;

namespace ORMFramework
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
