using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;

namespace ChangeTownNamesCasing
{
    public class Program
    {
        static void Main(string[] args)
        {
            try
            {
                string countryName = Console.ReadLine();

                const string DatabaseConnectionString = @"Server=DESKTOP-H75JB3P;Database=MinionsDB;Integrated Security=true;";

                using (SqlConnection sqlConnection = new SqlConnection(DatabaseConnectionString))
                {
                    sqlConnection.Open();

                    const string CountryIdByNameQueryString = @"SELECT c.[Id] FROM Countries AS c WHERE c.[Name] = @CountryName";

                    SqlCommand countryIdByNameSqlCommand = new SqlCommand(CountryIdByNameQueryString, sqlConnection);

                    countryIdByNameSqlCommand.Parameters.AddWithValue("@CountryName", countryName);

                    var countryIdByNameQueryResult = countryIdByNameSqlCommand.ExecuteScalar();

                    if (countryIdByNameQueryResult == null)
                    {
                        Console.WriteLine("No towns were affected");
                        return;
                    }
                    else
                    {
                        const string UpdateTownsNamesUppercaseQueryString = @"
                            UPDATE Towns
                            SET Name = UPPER(Name)
                            WHERE CountryCode = @CountryCode;
                        ";

                        using (SqlCommand updateTownsNamesUppercaseSqlCommand = new SqlCommand(UpdateTownsNamesUppercaseQueryString, sqlConnection))
                        {
                            updateTownsNamesUppercaseSqlCommand.Parameters.AddWithValue("@CountryCode", countryIdByNameQueryResult);

                            int updateTownsNamesUppercaseQueryResult = updateTownsNamesUppercaseSqlCommand.ExecuteNonQuery();

                            if (updateTownsNamesUppercaseQueryResult == 0)
                            {
                                Console.WriteLine("No towns were affected");
                                return;
                            }
                            else
                            {
                                Console.WriteLine($"{updateTownsNamesUppercaseQueryResult} town names were affected.");

                                const string TownsNamesByCountryNameQueryString = @"
                                    SELECT t.[Name]
                                    FROM Towns AS t
                                    WHERE CountryCode = @CountryCode
                                ";

                                using (SqlCommand townsNamesByCountryNameSqlCommand = new SqlCommand(TownsNamesByCountryNameQueryString, sqlConnection))
                                {
                                    townsNamesByCountryNameSqlCommand.Parameters.AddWithValue("@CountryCode", countryIdByNameQueryResult);

                                    using (SqlDataReader sqlDataReader = townsNamesByCountryNameSqlCommand.ExecuteReader())
                                    {
                                        List<string> townNames = new List<string>();

                                        while (sqlDataReader.Read())
                                        {
                                            townNames.Add(sqlDataReader.GetString(0));
                                        }

                                        Console.WriteLine($"[{string.Join(", ", townNames)}]");
                                    }
                                }
                            }
                        }
                    }

                    sqlConnection.Close();
                }
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine(sqlException.Message);
            }
        }
    }
}
