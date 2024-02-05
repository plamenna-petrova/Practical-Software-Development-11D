using Newtonsoft.Json;
using System;
using System.Collections.Generic;

namespace JSONSerialization
{
    public class Product
    {
        public Product(int id, string name, decimal price, int stock, DateTime expiry)
        {
            Id = id;
            Name = name;
            Price = price;  
            Stock = stock;
            Expiry = expiry;    
        }

        public int Id { get; set; } 

        public string Name { get; set; }

        public decimal Price { get; set; }  
        
        public int Stock { get; set; }

        public DateTime Expiry { get; set; }
    }

    public class Program
    {
        public static string SerializeObject<T>(T objectToSerialize)
        {
            try
            {
                return JsonConvert.SerializeObject(objectToSerialize, Formatting.Indented);
            }
            catch (JsonException jsonException)
            {
                throw new Exception("Error serailizing object to JSON.", jsonException);
            }
        }

        public static string SerializeListOfObjects<T>(List<T> listOfObjectsToSerialize)
        {
            try
            {
                return JsonConvert.SerializeObject(listOfObjectsToSerialize, Formatting.Indented);
            }
            catch (JsonException jsonException)
            {
                throw new Exception("Error serializing list of objects to JSON.", jsonException);
            }
        }

        static void Main(string[] args)
        {
            Product productToSerialize = new Product(1, "Test", 100.01m, 100, new DateTime(2019, 06, 30));

            string serializedProductJSONString = JsonConvert.SerializeObject(productToSerialize, Formatting.Indented);

            //string serializedProductJSONString = SerializeObject(productToSerialize);

            Console.WriteLine("Single product object (JSON format) : ");
            Console.WriteLine(serializedProductJSONString);
            Console.WriteLine(new string('-', 50));

            List<Product> productsToSerialize = new List<Product>()
            {
                new Product(1, "Milk", 2.59m, 100, new DateTime(2019, 06, 30)),
                new Product(2, "Lyutenitsa", 2.39m, 100, new DateTime(2019, 08, 30)),
                new Product(3, "Rice", 1.50m, 100, new DateTime(2020, 03, 30)),
                new Product(4, "Salt", 100.01m, 100, new DateTime(2019, 10, 30))
            };

            string serializedProductsListJSONString = JsonConvert.SerializeObject(productsToSerialize, Formatting.Indented);

            //string serializedProductsListJSONString = SerializeListOfObjects(productsToSerialize);

            Console.WriteLine("List of products (JSON format): ");
            Console.WriteLine(serializedProductsListJSONString);
            Console.WriteLine(new string('-', 50));
        }
    }
}
