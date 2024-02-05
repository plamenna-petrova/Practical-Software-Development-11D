using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;

namespace JSONDeserialization
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

        public override string ToString()
        {
            return $"Product -> Id: {Id}, Name: {Name}, Price: {Price}, Stock: {Stock}, Expiry: {Expiry.ToShortDateString()}";
        }
    }

    public class Program
    {
        public static T DeserializeObject<T>(string jsonStringToDeserialize)
        {
            if (string.IsNullOrWhiteSpace(jsonStringToDeserialize))
            {
                throw new ArgumentException("The given JSON string cannot be null or consisting only of whitespace characters");
            }

            try
            {
                return JsonConvert.DeserializeObject<T>(jsonStringToDeserialize);
            }
            catch (JsonException jsonException)
            {
                throw new Exception("Error deserializing JSON.", jsonException);
            }
        }

        public static List<T> DeserializeListOfObjects<T>(string jsonStringToDeserialize)
        {
            if (string.IsNullOrWhiteSpace(jsonStringToDeserialize))
            {
                throw new ArgumentException("The given JSON string cannot be null or consisting only of whitespace characters");
            }

            try
            {
                return JsonConvert.DeserializeObject<List<T>>(jsonStringToDeserialize);
            }
            catch (JsonException jsonException)
            {
                throw new Exception("Error deserializing JSON list.", jsonException);
            }
        }

        static void Main(string[] args)
        {
            string clothesSizesJSONToDeserialize = @"['Small', 'Medium', 'Large']";

            JArray deserializedClothesSizesJArray = JArray.Parse(clothesSizesJSONToDeserialize);

            foreach (var clothesSize in deserializedClothesSizesJArray)
            {
                Console.WriteLine(clothesSize);
            }

            Console.WriteLine(new string('-', 120));

            /*
                First way of deserialization: by assigning the deserialization type explicitly
                Second way of deserialization: by using a generic deserialization method
            */

            string singleProductJSONStringToDeserialize = @"
                {
                  ""Id"": 1,
                  ""Name"": ""Test"",
                  ""Price"": 100.01,
                  ""Stock"": 100,
                  ""Expiry"": ""2019-06-30T00:00:00""
                }
            ";

            Product singleDeserializedProduct = JsonConvert.DeserializeObject<Product>(singleProductJSONStringToDeserialize);

            //Product singleDeserializedProduct = DeserializeObject<Product>(singleProductJSONStringToDeserialize);

            Console.WriteLine(singleDeserializedProduct.ToString());
            Console.WriteLine(new string('-', 120));

            string productsListJSONStringToDeserialize = @"
                [
                  {
                    ""Id"": 1,
                    ""Name"": ""Milk"",
                    ""Price"": 2.59,
                    ""Stock"": 100,
                    ""Expiry"": ""2019-06-30T00:00:00""
                  },
                  {
                    ""Id"": 2,
                    ""Name"": ""Lyutenitsa"",
                    ""Price"": 2.39,
                    ""Stock"": 100,
                    ""Expiry"": ""2019-08-30T00:00:00""
                  },
                  {
                    ""Id"": 3,
                    ""Name"": ""Rice"",
                    ""Price"": 1.50,
                    ""Stock"": 100,
                    ""Expiry"": ""2020-03-30T00:00:00""
                  },
                  {
                    ""Id"": 4,
                    ""Name"": ""Salt"",
                    ""Price"": 100.01,
                    ""Stock"": 100,
                    ""Expiry"": ""2019-10-30T00:00:00""
                  }
                ]
            ";

            List<Product> deserializedProducts = JsonConvert.DeserializeObject<List<Product>>(productsListJSONStringToDeserialize);

            //List<Product> deserializedProducts = DeserializeListOfObjects<Product>(productsListJSONStringToDeserialize);

            foreach (var deserializedProduct in deserializedProducts)
            {
                Console.WriteLine(deserializedProduct.ToString());
            }

            Console.WriteLine(new string('-', 120));
        }
    }
}
