using System;
using System.Collections.Generic;
using System.Text;

namespace ChangePreventers
{
    public static class Application
    {
        public static void Start()
        {            
            Controller.SetConnectionString("LocalDb/v0.2");    
            Controller.ConnectToDb();
            Controller.DisplayAllCustomers();
        }
    }
}
