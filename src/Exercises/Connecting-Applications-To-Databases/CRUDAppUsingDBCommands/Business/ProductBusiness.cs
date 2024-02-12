using CRUDAppUsingDBCommands.Data;
using System;
using System.Collections.Generic;
using System.Text;
using CRUDAppUsingDBCommands.Common;

namespace CRUDAppUsingDBCommands.Business
{
    public class ProductBusiness
    {
        private ProductData productDataManager = new ProductData();

        public List<Product> GetAll()
        {
            return productDataManager.GetAll();
        }

        public Product GetById(int id)
        {
            return productDataManager.GetById(id);
        }

        public void Add(Product product)
        {
            productDataManager.Add(product);
        }

        public void Update(Product product)
        {
            productDataManager.Update(product);
        }

        public void Delete(int id) 
        {
            productDataManager.Delete(id);
        }
    }
}
