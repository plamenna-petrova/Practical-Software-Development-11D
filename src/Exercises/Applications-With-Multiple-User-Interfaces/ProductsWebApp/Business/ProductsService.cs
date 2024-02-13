using Microsoft.EntityFrameworkCore;
using ProductsWebApp.Data;
using ProductsWebApp.Data.Models;

namespace ProductsWebApp.Business
{
    public class ProductsService : IProductsService
    {
        private readonly ProductContext _applicationDbContext;

        public ProductsService(ProductContext applicationDbContext)
        {
            _applicationDbContext = applicationDbContext;
        }

        public async Task<List<Product>> GetAll() => await _applicationDbContext.Products.ToListAsync();

        public async Task<Product> GetById(int id) => await _applicationDbContext.Products.FirstOrDefaultAsync(p => p.Id == id);

        public async Task Add(Product product)
        {
            await _applicationDbContext.Products.AddAsync(product);
            await _applicationDbContext.SaveChangesAsync();
        }

        public async Task Update(Product product)
        {
            _applicationDbContext.Update(product);
            await _applicationDbContext.SaveChangesAsync();
        }

        public async Task Delete(Product product)
        {
            _applicationDbContext.Products.Remove(product);
            await _applicationDbContext.SaveChangesAsync();
        }

        public bool Any() => _applicationDbContext.Products != null;

        public bool Exists(int id) => (_applicationDbContext.Products?.Any(e => e.Id == id)).GetValueOrDefault();
    }
}
