using System;
using System.Globalization;
using System.Linq;
using System.Threading;

namespace OrdersRefactoredCode
{
    public class Program
    {
        static void Main(string[] args)
        {
            var dataMapper = new DataMapper();
            var loadedCategories = dataMapper.GetAllCategories();
            var loadedProducts = dataMapper.GetAllProducts();
            var loadedOrders = dataMapper.GetAllOrders();

            // Names of the 5 most expensive products
            var topFiveMostExpensiveProducts = loadedProducts
                .OrderByDescending(p => p.UnitPrice)
                .Take(5)
                .Select(p => p.Name);

            Console.WriteLine(string.Join(Environment.NewLine, topFiveMostExpensiveProducts));

            Console.WriteLine(new string('-', 10));

            // Number of products in each category
            var categoriesWithProductsCount = loadedProducts
                .GroupBy(p => p.CategoryID)
                .Select(pgr => new 
                { 
                    Category = loadedCategories.First(c => c.ID == pgr.Key).Name, 
                    Count = pgr.Count() 
                })
                .ToList();

            foreach (var categoryWithProductsCount in categoriesWithProductsCount)
            {
                Console.WriteLine("{0}: {1}", categoryWithProductsCount.Category, categoryWithProductsCount.Count);
            }

            Console.WriteLine(new string('-', 10));

            // The 5 top products (by order quantity)
            var topFiveProductsByOrderQuantity = loadedOrders
                .GroupBy(o => o.ProductID)
                .Select(ogr => new 
                { 
                    Product = loadedProducts.First(p => p.ID == ogr.Key).Name, 
                    OrderQuantity = ogr.Sum(o => o.Quantity) 
                })
                .OrderByDescending(ogr => ogr.OrderQuantity)
                .Take(5);

            foreach (var productByOrderQuantity in topFiveProductsByOrderQuantity)
            {
                Console.WriteLine("{0}: {1}", productByOrderQuantity.Product, productByOrderQuantity.OrderQuantity);
            }

            Console.WriteLine(new string('-', 10));

            // The most profitable category
            var mostProfitableCategory = loadedOrders
                .GroupBy(o => o.ProductID)
                .Select(ogr => new 
                {
                    loadedProducts.First(p => p.ID == ogr.Key).CategoryID, 
                    Price = loadedProducts.First(p => p.ID == ogr.Key).UnitPrice, 
                    Quantity = ogr.Sum(p => p.Quantity) 
                })
                .GroupBy(pgr => pgr.CategoryID)
                .Select(pgr => new 
                { 
                    CategoryName = loadedCategories.First(c => c.ID == pgr.Key).Name, 
                    TotalQuantity = pgr.Sum(pgr => pgr.Quantity * pgr.Price) 
                })
                .OrderByDescending(cgr => cgr.TotalQuantity)
                .First();

            Console.WriteLine("{0}: {1}", mostProfitableCategory.CategoryName, mostProfitableCategory.TotalQuantity);
        }
    }
}
