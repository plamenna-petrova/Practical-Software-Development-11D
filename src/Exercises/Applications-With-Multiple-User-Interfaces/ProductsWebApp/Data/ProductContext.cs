using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using ProductsWebApp.Data.Models;
using System.Xml;

namespace ProductsWebApp.Data
{
    public class ProductContext : IdentityDbContext
    {
        public ProductContext()
        {

        }

        public ProductContext(DbContextOptions<ProductContext> options)
            : base(options)
        {

        }

        public DbSet<Product> Products { get; set; }
    }
}