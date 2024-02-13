using ProductsWebApp.Data.Models;

namespace ProductsWebApp.Business
{
    public interface IProductsService
    {
        Task<List<Product>> GetAll();

        Task<Product> GetById(int id);

        Task Add(Product product);

        Task Update(Product product);

        Task Delete(Product product);

        bool Any();

        bool Exists(int id);
    }
}
