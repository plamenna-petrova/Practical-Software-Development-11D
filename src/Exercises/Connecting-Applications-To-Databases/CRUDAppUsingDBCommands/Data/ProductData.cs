using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;
using CRUDAppUsingDBCommands.Common;

namespace CRUDAppUsingDBCommands.Data
{
    public class ProductData
    {
        public List<Product> GetAll()
        {
            var products = new List<Product>();

            using (var databaseConnection = Database.GetConnection())
            {
                var getAllProductsSqlCommand = new SqlCommand("SELECT * FROM product", databaseConnection);

                databaseConnection.Open();

                using (var sqlDataReader = getAllProductsSqlCommand.ExecuteReader())
                {
                    while (sqlDataReader.Read())
                    {
                        var product = new Product(
                            sqlDataReader.GetInt32(0),
                            sqlDataReader.GetString(1),
                            sqlDataReader.GetDecimal(2),
                            sqlDataReader.GetInt32(3)
                        );

                        products.Add(product);
                    }
                }

                databaseConnection.Close();
            }

            return products;
        }

        public Product GetById(int id)
        {
            Product productById = null;

            using (var databaseConnection = Database.GetConnection()) 
            {
                databaseConnection.Open();

                var getProductByIdSqlCommand = new SqlCommand("SELECT * FROM product WHERE Id=@Id", databaseConnection);

                getProductByIdSqlCommand.Parameters.AddWithValue("@Id", id);

                using (var sqlDataReader = getProductByIdSqlCommand.ExecuteReader())
                {
                    if (sqlDataReader.Read())
                    {
                        productById = new Product(
                            sqlDataReader.GetInt32(0),
                            sqlDataReader.GetString(1),
                            sqlDataReader.GetDecimal(2),
                            sqlDataReader.GetInt32(3)
                        );
                    }
                }

                databaseConnection.Close();
            }

            return productById;
        }

        public void Add(Product product)
        {
            using (var databaseConnection = Database.GetConnection())
            {
                databaseConnection.Open();

                var addProductSqlCommand = new SqlCommand("INSERT INTO product (Name, Price, Stock) VALUES(@Name, @Price, @Stock)", databaseConnection);

                addProductSqlCommand.Parameters.AddWithValue("@Name", product.Name);
                addProductSqlCommand.Parameters.AddWithValue("@Price", product.Price);
                addProductSqlCommand.Parameters.AddWithValue("@Stock", product.Stock);

                addProductSqlCommand.ExecuteNonQuery();

                databaseConnection.Close();
            }
        }

        public void Update(Product product)
        {
            using (var databaseConnection = Database.GetConnection()) 
            {
                databaseConnection.Open();

                var updateProductSqlCommand = new SqlCommand("UPDATE product SET Name=@Name, Price=@Price, Stock=@Stock WHERE Id=@Id", databaseConnection);

                updateProductSqlCommand.Parameters.AddWithValue("@Id", product.Id);
                updateProductSqlCommand.Parameters.AddWithValue("@Name", product.Name);
                updateProductSqlCommand.Parameters.AddWithValue("@Price", product.Price);
                updateProductSqlCommand.Parameters.AddWithValue("@Stock", product.Stock);

                updateProductSqlCommand.ExecuteNonQuery();

                databaseConnection.Close();
            }
        }

        public void Delete(int id)
        {
            using (var databaseConnection = Database.GetConnection())
            {
                databaseConnection.Open();
                
                var deleteProductSqlCommand = new SqlCommand("DELETE product WHERE Id=@Id", databaseConnection);

                deleteProductSqlCommand.Parameters.AddWithValue("@Id", id);

                deleteProductSqlCommand.ExecuteNonQuery();

                databaseConnection.Close();
            }
        }
    }
}
