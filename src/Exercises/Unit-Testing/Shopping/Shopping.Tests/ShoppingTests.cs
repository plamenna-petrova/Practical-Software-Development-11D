using NUnit.Framework;
using Skeleton;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Shopping.Tests
{
    [TestFixture]
    public class Tests
    {
        [Test]
        public void Test_FirstBuyer_HasBoughtBread()
        {
            var buyers = ConfigureBuyersList("Pesho=11;Gosho=4");
            var products = ConfigureProductsList("Bread=10;Milk=2;");

            List<string> shoppingCommands = new List<string>
            {
                "Pesho Bread",
                "Gosho Milk",
                "Gosho Milk",
                "Pesho Milk",
                "END"
            };

            DoTheShopping(shoppingCommands, buyers, products);

            Assert.That(
                buyers[0].Products.Contains(products.FirstOrDefault(p => p.Name == "Bread")), 
                "The first buyer 'Pesho' should have bought Bread"
            );
        }

        [Test]
        public void Test_FirstBuyer_HasExactlyOneProductInShoppingBag()
        {
            var buyers = ConfigureBuyersList("Pesho=11;Gosho=4");
            var products = ConfigureProductsList("Bread=10;Milk=2;");

            List<string> shoppingCommands = new List<string>
            {
                "Pesho Bread",
                "Gosho Milk",
                "Gosho Milk",
                "Pesho Milk",
                "END"
            };

            DoTheShopping(shoppingCommands, buyers, products);

            Assert.That(
               buyers[0].Products.Count().Equals(1),
               "The second buyer 'Pesho' should have exactly one item in the shopping bag"
            );
        }

        [Test]
        public void Test_FirstBuyer_CouldNotAffordMilk()
        {
            var buyers = ConfigureBuyersList("Pesho=11;Gosho=4");
            var products = ConfigureProductsList("Bread=10;Milk=2;");

            List<string> shoppingCommands = new List<string>
            {
                "Pesho Bread",
                "Gosho Milk",
                "Gosho Milk",
                "Pesho Milk",
                "END"
            };

            DoTheShopping(shoppingCommands, buyers, products);

            Assert.That(
                !buyers[0].Products.Contains(products.FirstOrDefault(p => p.Name == "Milk")), 
                "The first buyer 'Pesho' shouldn't afford Milk"
            );
        }

        [Test]
        public void Test_SecondBuyer_HasExactlyTwoProductsInShoppingBag()
        {
            var buyers = ConfigureBuyersList("Pesho=11;Gosho=4");
            var products = ConfigureProductsList("Bread=10;Milk=2;");

            List<string> shoppingCommands = new List<string>
            {
                "Pesho Bread",
                "Gosho Milk",
                "Gosho Milk",
                "Pesho Milk",
                "END"
            };

            DoTheShopping(shoppingCommands, buyers, products);

            Assert.That(
                buyers[1].Products.Count().Equals(2),
                "The second buyer 'Gosho' should have exactly two items in the shopping bag"
            );
        }

        [Test]
        public void Test_SecondBuyer_HasOnlyMilkInShoppingBag()
        {
            var buyers = ConfigureBuyersList("Pesho=11;Gosho=4");
            var products = ConfigureProductsList("Bread=10;Milk=2;");

            List<string> shoppingCommands = new List<string>
            {
                "Pesho Bread",
                "Gosho Milk",
                "Gosho Milk",
                "Pesho Milk",
                "END"
            };

            DoTheShopping(shoppingCommands, buyers, products);

            Assert.That(
                buyers[1].Products.All(x => x == products.FirstOrDefault(y => y.Name == "Milk")),
                "The second buyer 'Gosho' should have only Milk in shopping bag"
            );
        }

        [Test]
        public void Test_BuyersList_ContainsOnlyOneBuyer()
        {
            var buyers = ConfigureBuyersList("Mimi=0");
            var products = ConfigureProductsList("Kafence=2");

            List<string> shoppingCommands = new List<string>
            {
                "Mimi Kafence",
                "END"
            };

            DoTheShopping(shoppingCommands, buyers, products);

            Assert.That(
                buyers.Count().Equals(1),
                "There should be only one buyer"
            );
        }

        [Test]
        public void Test_TheOnlyBuyer_HasntBoughtAnything()
        {
            var buyers = ConfigureBuyersList("Mimi=0");
            var products = ConfigureProductsList("Kafence=2");

            List<string> shoppingCommands = new List<string>
            {
                "Mimi Kafence",
                "END"
            };

            DoTheShopping(shoppingCommands, buyers, products);

            Assert.That(
                !buyers.First().Products.Any(),
                "The first and only buyer shouldn't buy anything"
            );
        }

        [Test]
        public void Test_PersonShoppingMoney_CannotBeNegative()
        {
            var argumentException = Assert.Throws<ArgumentException>(() =>
            {
                ConfigureBuyersList("Jeko=-3");
                ConfigureProductsList("Chushki=1");
            });

            Assert.That(argumentException.Message, Is.EqualTo("Money cannot be negative"));
        }

        [Test]
        public void Test_PersonName_CannotBeEmpty()
        {
            var argumentException = Assert.Throws<ArgumentException>(() =>
            {
                ConfigureBuyersList("=2");
                ConfigureProductsList("Milk=1;");
            });

            Assert.That(argumentException.Message, Is.EqualTo("Name cannot be empty"));
        }

        private void DoTheShopping(List<string> shoppingCommands, List<Person> buyers, List<Product> products)
        {
            int j = 0;

            string shoppingCommand = shoppingCommands[j];

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

                shoppingCommand = shoppingCommands[j++];
            }
        }

        private List<Person> ConfigureBuyersList(string peopleCommandsString)
        {
            string[] peopleCommands = peopleCommandsString.Split(new char[] { ';' }, StringSplitOptions.RemoveEmptyEntries);

            List<Person> buyers = new List<Person>();

            for (int i = 0; i < peopleCommands.Length; i++)
            {
                string[] personCommand = peopleCommands[i].Split('=');
                string personName = personCommand[0];
                double personMoney = double.Parse(personCommand[1]);
                Person buyer = new Person(personName, personMoney);
                buyers.Add(buyer);
            }

            return buyers;
        }

        private List<Product> ConfigureProductsList(string productsCommandString)
        {
            string[] productsCommands = productsCommandString.Split(new char[] { ';' }, StringSplitOptions.RemoveEmptyEntries);

            List<Product> products = new List<Product>();

            for (int i = 0; i < productsCommands.Length; i++)
            {
                string[] productCommand = productsCommands[i].Split('=');
                string productName = productCommand[0];
                double productValue = double.Parse(productCommand[1]);
                Product product = new Product(productName, productValue);
                products.Add(product);
            }

            return products;
        }
    }
}