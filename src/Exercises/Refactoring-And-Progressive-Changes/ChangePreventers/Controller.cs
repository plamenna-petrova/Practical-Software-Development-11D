﻿using System;
using System.Collections.Generic;
using System.Text;

namespace ChangePreventers
{
    public class Controller
    {
        public static void DisplayAllCustomers()
        {
            Database.GetCustomers();
            // ...
        }
    }
}
