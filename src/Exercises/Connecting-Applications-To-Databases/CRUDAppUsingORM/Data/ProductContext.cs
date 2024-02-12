using System;
using System.Collections.Generic;
using System.Text;
using CRUDAppUsingORM.Data.Models;
using Microsoft.EntityFrameworkCore;

namespace CRUDAppUsingORM.Data
{
    public class ProductContext : DbContext
    {
        private const string connectionString = "Server=LENOVOLEGION\\SQLEXPRESS;Database=ProductDB;Trusted_Connection=True;";

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(connectionString);
        }

        public DbSet<Product> Products { get; set; }
    }
}
