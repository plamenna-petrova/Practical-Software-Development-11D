using System;
using System.Collections.Generic;
using System.Text;

namespace OrdersRefactoredCode.Models
{
    public class Product
    {
        public int ID { get; set; }

        public string Name { get; set; }

        public int CategoryID { get; set; }

        public decimal UnitPrice { get; set; }

        public int UnitsInStock { get; set; }
    }
}
