using Microsoft.EntityFrameworkCore;
using ProductsWindowsFormsApp.Data.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace ProductsWindowsFormsApp.Data
{
    public class ProductContext : DbContext
    {
        private const string connectionString = "Server=DESKTOP-H75JB3P;Database=ProductsDB;Trusted_Connection=True;";

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(connectionString);
        }

        public DbSet<Product> Products { get; set; }
    }
}
