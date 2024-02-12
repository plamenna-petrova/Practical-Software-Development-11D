using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace CRUDAppUsingDBCommands.Data
{
    public static class Database
    {
        private static string connectionString = "Server=LENOVOLEGION\\SQLEXPRESS;Database=shop;Integrated Security=true";

        public static SqlConnection GetConnection()
        {
            return new SqlConnection(connectionString);
        }
    }
}
