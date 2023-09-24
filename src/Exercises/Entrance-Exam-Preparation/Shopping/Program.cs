using System;
using System.Collections.Generic;
using System.Linq;

namespace Shopping
{
    public class Person
    {
        private string name;

        private double money;

        private List<Product> products = new List<Product>();

        public Person(string name, double money)
        {
            this.Name = name;
            this.Money = money;
        }

        public string Name
        {
            get
            {
                return this.name;
            }

            set
            {
                if (string.IsNullOrWhiteSpace(value))
                {
                    throw new ArgumentException("Name cannot be empty");
                }

                this.name = value;
            }
        }

        public double Money
        {
            get
            {
                return this.money;
            }

            set
            {
                if (value < 0)
                {
                    throw new ArgumentException("Money cannot be negative");
                }

                this.money = value;
            }
        }

        public List<Product> Products
        {
            get
            {
                return this.products;
            }

            set
            {
                this.products = value;
            }
        }

        public void CanAffordProduct(Product product)
        {
            if (this.Money >= product.Value)
            {
                this.Money -= product.Value;
                this.Products.Add(product);
                Console.WriteLine($"{this.Name} bought {product.Name}");
            }
            else
            {
                Console.WriteLine($"{this.Name} can't afford {product.Name}");
            }
        }
    }

    public class Product
    {
        private string name;

        private double value;

        public Product(string name, double value)
        {
            this.name = name;
            this.value = value;
        }

        public string Name
        {
            get
            {
                return this.name;
            }

            set
            {
                if (string.IsNullOrWhiteSpace(value))
                {
                    throw new Exception("Name cannot be empty");
                }

                this.name = value;
            }
        }

        public double Value
        {
            get
            {
                return this.value;
            }

            set
            {
                this.value = value;
            }
        }
    }

    public class Program
    {
        static void Main(string[] args)
        {
            string[] peopleCommands = Console.ReadLine().Split(new char[] { ';' }, StringSplitOptions.RemoveEmptyEntries);
            string[] productsCommands = Console.ReadLine().Split(new char[] { ';' }, StringSplitOptions.RemoveEmptyEntries);

            List<Person> buyers = new List<Person>();
            List<Product> products = new List<Product>();

            for (int i = 0; i < peopleCommands.Length; i++)
            {
                string[] personCommand = peopleCommands[i].Split('=');
                string personName = personCommand[0];
                double personMoney = double.Parse(personCommand[1]);
                Person buyer = new Person(personName, personMoney);
                buyers.Add(buyer);
            }

            for (int i = 0; i < productsCommands.Length; i++)
            {
                string[] productCommand = productsCommands[i].Split('=');
                string productName = productCommand[0];
                double productValue = double.Parse(productCommand[1]);
                Product product = new Product(productName, productValue);
                products.Add(product);
            }

            string shoppingCommand = Console.ReadLine();

            while (shoppingCommand != "END")
            {
                string[] shoppingInfo = shoppingCommand.Split();
                string buyerName = shoppingInfo[0];
                string shoppingItemName = shoppingInfo[1];

                Person buyer = buyers.Where(p => p.Name == buyerName).FirstOrDefault();

                if (buyer != null)
                {
                    Product shoppingItem = products.Where(p => p.Name == shoppingItemName).FirstOrDefault();

                    if (shoppingItem != null)
                    {
                        buyer.CanAffordProduct(shoppingItem);
                    }
                }

                shoppingCommand = Console.ReadLine();
            }

            foreach (var buyer in buyers)
            {
                if (buyer.Products.Count == 0)
                {
                    Console.WriteLine($"{buyer.Name} - Nothing bought");
                }
                else
                {
                    Console.WriteLine($"{buyer.Name} - {string.Join(", ", buyer.Products.Select(p => p.Name).ToArray())}");
                }
            }
        }
    }
}
