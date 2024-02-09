using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace ChangeTownNamesCasingAsync
{
    public class Program
    {
        static async Task Main(string[] args)
        {
            try
            {
                string countryName = Console.ReadLine();

                const string DatabaseConnectionString = @"Server=DESKTOP-H75JB3P;Database=MinionsDB;Integrated Security=true;";

                await using (SqlConnection sqlConnection = new SqlConnection(DatabaseConnectionString))
                {
                    await sqlConnection.OpenAsync();

                    const string CountryIdByNameQueryString = @"SELECT c.[Id] FROM Countries AS c WHERE c.[Name] = @CountryName";

                    SqlCommand countryIdByNameSqlCommand = new SqlCommand(CountryIdByNameQueryString, sqlConnection);

                    countryIdByNameSqlCommand.Parameters.AddWithValue("@CountryName", countryName);

                    var countryIdByNameQueryResult = await countryIdByNameSqlCommand.ExecuteScalarAsync();

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

                        await using (SqlCommand updateTownsNamesUppercaseSqlCommand = new SqlCommand(UpdateTownsNamesUppercaseQueryString, sqlConnection))
                        {
                            updateTownsNamesUppercaseSqlCommand.Parameters.AddWithValue("@CountryCode", countryIdByNameQueryResult);

                            int updateTownsNamesUppercaseQueryResult = await updateTownsNamesUppercaseSqlCommand.ExecuteNonQueryAsync();

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

                                await using (SqlCommand townsNamesByCountryNameSqlCommand = new SqlCommand(TownsNamesByCountryNameQueryString, sqlConnection))
                                {
                                    townsNamesByCountryNameSqlCommand.Parameters.AddWithValue("@CountryCode", countryIdByNameQueryResult);

                                    await using (SqlDataReader sqlDataReader = await townsNamesByCountryNameSqlCommand.ExecuteReaderAsync())
                                    {
                                        List<string> townNames = new List<string>();

                                        while (await sqlDataReader.ReadAsync())
                                        {
                                            townNames.Add(sqlDataReader.GetString(0));
                                        }

                                        Console.WriteLine($"[{string.Join(", ", townNames)}]");
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine(sqlException.Message);
            }
        }
    }
}
