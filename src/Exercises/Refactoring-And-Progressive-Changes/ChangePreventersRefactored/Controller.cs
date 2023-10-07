using System;
using System.Collections.Generic;
using System.Text;

namespace ChangePreventers
{
    public class Controller
    {
        public static void SetConnectionString(string connectionString)
        {
            Database.DbConnectionString = connectionString;
        }

        public static void ConnectToDb()
        {
            Database.ConnectToDb();
        }

        public static void DisplayAllCustomers()
        {
            Database.GetCustomers();
            // ...
        }
    }
}
