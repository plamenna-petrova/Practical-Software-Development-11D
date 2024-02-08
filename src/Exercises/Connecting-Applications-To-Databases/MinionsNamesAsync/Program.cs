using System;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace MinionsNamesAsync
{
    public class Program
    {
        static async Task Main()
        {
            try
            {
                const string DatabaseConnectionString = @"Server=LENOVOLEGION\SQLEXPRESS;Database=MinionsDB;Integrated Security=true;";

                Console.Write("Enter villain Id: ");
                int villainId = int.Parse(Console.ReadLine());

                await using (SqlConnection sqlConnection = new SqlConnection(DatabaseConnectionString))
                {
                    await sqlConnection.OpenAsync();

                    const string VillainExistsQueryString = @"SELECT 1 FROM Villains WHERE Id = @VillainId";

                    await using (SqlCommand villainExistsSqlCommand = new SqlCommand(VillainExistsQueryString, sqlConnection))
                    {
                        villainExistsSqlCommand.Parameters.AddWithValue("@VillainId", villainId);

                        int villainExistsQueryResult = (int)await villainExistsSqlCommand.ExecuteScalarAsync();

                        if (villainExistsQueryResult == 0)
                        {
                            Console.WriteLine($"No villain with ID {villainId} exists in the database.");
                            return;
                        }

                        const string VillainNameByIdQueryString = @"SELECT v.[Name] FROM Villains AS v WHERE Id = @VillainId";

                        await using (SqlCommand villainNameByIdSqlCommand = new SqlCommand(VillainNameByIdQueryString, sqlConnection))
                        {
                            villainNameByIdSqlCommand.Parameters.AddWithValue("@VillainId", villainId);

                            string villainNameQueryResult = (string)await villainNameByIdSqlCommand.ExecuteScalarAsync();

                            const string MinionsInfoByVillainIdQueryString = @"
                                SELECT m.[Name] AS MinionName, m.Age AS MinionAge
                                FROM Minions AS m
                                JOIN MinionsVillains AS mv ON m.Id = mv.MinionId
                                JOIN Villains AS v ON mv.VillainId = v.Id
                                WHERE v.Id = @VillainId
                                ORDER BY MinionName ASC
                            ";

                            await using (SqlCommand minionsInfoByVillainIdSqlCommand = new SqlCommand(MinionsInfoByVillainIdQueryString, sqlConnection))
                            {
                                minionsInfoByVillainIdSqlCommand.Parameters.AddWithValue("@VillainId", villainId);

                                await using (SqlDataReader sqlDataReader = await minionsInfoByVillainIdSqlCommand.ExecuteReaderAsync())
                                {
                                    Console.WriteLine($"Villain: {villainNameQueryResult}");

                                    if (!sqlDataReader.HasRows)
                                    {
                                        Console.WriteLine("(no minions)");
                                    }
                                    else
                                    {
                                        int i = 0;

                                        while (await sqlDataReader.ReadAsync())
                                        {
                                            string villainName = sqlDataReader.GetString(0);
                                            int minionsCount = sqlDataReader.GetInt32(1);

                                            Console.WriteLine($"{++i}. {villainName} {minionsCount}");
                                        }
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
