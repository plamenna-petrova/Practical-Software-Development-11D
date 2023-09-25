using OrdersRefactoredCode.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace OrdersRefactoredCode
{
    public class DataMapper
    {
        private string categoriesFileName;
        private string productsFileName;
        private string ordersFileName;

        public DataMapper(string categoriesFileName, string productsFileName, string ordersFileName)
        {
            this.categoriesFileName = categoriesFileName;
            this.productsFileName = productsFileName;
            this.ordersFileName = ordersFileName;
        }

        public DataMapper()
            : this("Categories.txt", "Products.txt", "Orders.txt")
        {

        }

        public IEnumerable<Category> GetAllCategories()
        {
            var allCategories = ReadFileLines(this.categoriesFileName, true);

            return allCategories
                .Select(c => c.Split(','))
                .Select(c => new Category
                {
                    ID = int.Parse(c[0]),
                    Name = c[1],
                    Description = c[2]
                });
        }

        public IEnumerable<Product> GetAllProducts()
        {
            var allProducts = ReadFileLines(this.productsFileName, true);

            return allProducts
                .Select(p => p.Split(','))
                .Select(p => new Product
                {
                    ID = int.Parse(p[0]),
                    Name = p[1],
                    CategoryID = int.Parse(p[2]),
                    UnitPrice = decimal.Parse(p[3]),
                    UnitsInStock = int.Parse(p[4]),
                });
        }

        public IEnumerable<Order> GetAllOrders()
        {
            var allOrders = ReadFileLines(this.ordersFileName, true);

            return allOrders
                .Select(o => o.Split(','))
                .Where(o => o.All(oi => oi != string.Empty))
                .Select(o => new Order
                {
                    ID = int.Parse(o[0]),
                    ProductID = int.Parse(o[1]),
                    Quantity = int.Parse(o[2]),
                    Discount = decimal.Parse(o[3]),
                });
        }

        private List<string> ReadFileLines(string filename, bool hasHeader)
        {
            string fullPath = Path.GetFullPath(filename);

            var allLines = new List<string>();

            using (var reader = new StreamReader(fullPath))
            {
                string currentLine;

                if (hasHeader)
                {
                    reader.ReadLine();
                }

                while ((currentLine = reader.ReadLine()) != null)
                {
                    allLines.Add(currentLine);
                }
            }

            return allLines;
        }
    }
}
