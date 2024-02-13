using ProductsWindowsFormsApp.Data;
using ProductsWindowsFormsApp.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProductsWindowsFormsApp.Business
{
    public class ProductBusiness
    {
        private ProductContext productContext;

        public List<Product> GetAll()
        {
            using (productContext = new ProductContext())
            {
                return productContext.Products.ToList();
            }
        }

        public Product GetById(int id)
        {
            using (productContext = new ProductContext())
            {
                return productContext.Products.Find(id);
            }
        }

        public void Add(Product product)
        {
            using (productContext = new ProductContext())
            {
                productContext.Products.Add(product);
                productContext.SaveChanges();
            }
        }

        public void Update(Product product)
        {
            using (productContext = new ProductContext())
            {
                var productToUpdate = productContext.Products.Find(product.Id);

                if (productToUpdate != null)
                {
                    productContext.Entry(productToUpdate).CurrentValues.SetValues(product);
                    productContext.SaveChanges();
                }
            }
        }

        public void Delete(int id)
        {
            using (productContext = new ProductContext())
            {
                var productToDelete = productContext.Products.Find(id);

                if (productToDelete != null)
                {
                    productContext.Products.Remove(productToDelete);
                    productContext.SaveChanges();
                }
            }
        }
    }
}
