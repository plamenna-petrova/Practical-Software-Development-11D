using System;
using System.Collections.Generic;
using System.Text;

namespace CRUDAppUsingDBCommands.Common
{
    public class Product
    {
        public Product()
        {
                
        }

        public Product(int id, string name, decimal price, int stock)
        {
            Id = id;
            Name = name;
            Price = price;
            Stock = stock;
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public decimal Price { get; set; }

        public int Stock { get; set; }
    }
}
