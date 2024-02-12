﻿using System;
using System.Collections.Generic;
using System.Text;

namespace MiniORMSkeleton
{
    /// <summary>
    /// Used for wrapping a database connection with a using statement and
    /// automatically closing it when the using statement ends
    /// </summary>
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
