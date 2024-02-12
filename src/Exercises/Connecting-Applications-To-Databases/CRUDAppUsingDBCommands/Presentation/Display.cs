using CRUDAppUsingDBCommands.Business;
using CRUDAppUsingDBCommands.Common;
using System;
using System.Collections.Generic;
using System.Text;

namespace CRUDAppUsingDBCommands.Presentation
{
    public class Display
    {
        private int closeOperationId = 6;

        private ProductBusiness productBusiness = new ProductBusiness();

        public Display()
        {
            Input();
        }

        private void Input()
        {
            var operation = -1;

            do
            {
                ShowMenu();

                operation = int.Parse(Console.ReadLine());

                switch (operation)
                {
                    case 1:
                        ListAll();
                        break;
                    case 2:
                        Add();
                        break;
                    case 3:
                        Update();
                        break;
                    case 4:
                        Fetch();
                        break;
                    case 5:
                        Delete();
                        break;
                    default:
                        break;
                }
            } while (operation != closeOperationId);
        }

        private void Add()
        {
            Product productToAdd = new Product();
            Console.WriteLine("Enter name: ");
            productToAdd.Name = Console.ReadLine();
            Console.WriteLine("Enter price: ");
            productToAdd.Price = decimal.Parse(Console.ReadLine());
            Console.WriteLine("Enter stock: ");
            productToAdd.Stock = int.Parse(Console.ReadLine());
            productBusiness.Add(productToAdd);
        }

        private void ListAll()
        {
            Console.WriteLine(new string('-', 40));
            Console.WriteLine(new string(' ', 16) + "PRODUCTS" + new string(' ', 16));
            Console.WriteLine(new string('-', 40));

            var allProducts = productBusiness.GetAll();

            foreach (var product in allProducts)
            {
                Console.WriteLine("{0} {1} {2} {3}", product.Id, product.Name, product.Price, product.Stock);
            }
        }

        private void Update()
        {
            Console.WriteLine("Enter ID to update: ");

            int productUpdateId = int.Parse(Console.ReadLine());

            Product productToUpdate = productBusiness.GetById(productUpdateId);

            if (productToUpdate != null)
            {
                Console.WriteLine("Enter name: ");
                productToUpdate.Name = Console.ReadLine();
                Console.WriteLine("Enter price: ");
                productToUpdate.Price = decimal.Parse(Console.ReadLine());
                Console.WriteLine("Enter stock: ");
                productToUpdate.Stock = int.Parse(Console.ReadLine());
                productBusiness.Update(productToUpdate);
            }
            else
            {
                Console.WriteLine("Product not found!");
            }
        }

        private void Fetch()
        {
            Console.WriteLine("Enter ID to fetch: ");
            int fetchProductId = int.Parse(Console.ReadLine());
            Product fetchedProduct = productBusiness.GetById(fetchProductId);

            if (fetchedProduct != null)
            {
                Console.WriteLine(new string('-', 40));
                Console.WriteLine("ID: " + fetchedProduct.Id);
                Console.WriteLine("Name: " + fetchedProduct.Name);
                Console.WriteLine("Price: " + fetchedProduct.Price);
                Console.WriteLine("Stock: " + fetchedProduct.Stock);
                Console.WriteLine(new string('-', 40));
            }
        }

        private void Delete()
        {
            Console.WriteLine("Enter ID to delete: ");
            int productDeletionId = int.Parse(Console.ReadLine());
            productBusiness.Delete(productDeletionId);
            Console.WriteLine("Done.");
        }

        private void ShowMenu()
        {
            Console.WriteLine(new string('-', 40));
            Console.WriteLine(new string(' ', 18) + "MENU" + new string(' ', 18));
            Console.WriteLine(new string('-', 40));
            Console.WriteLine("1 List all entries");
            Console.WriteLine("2. Add new entry");
            Console.WriteLine("3. Update entry");
            Console.WriteLine("4. Fetch entry by ID");
            Console.WriteLine("5. Delete entry by ID");
            Console.WriteLine("6. Exit");
        }
    }
}
