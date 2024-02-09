using System;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace RemoveVillainAsync
{
    public class Program
    {
        static async Task Main(string[] args)
        {
            try
            {
                int villainToDeleteId = int.Parse(Console.ReadLine());

                const string DatabaseConnectionString = @"Server=DESKTOP-H75JB3P;Database=MinionsDB;Integrated Security=true;";

                await using (SqlConnection sqlConnection = new SqlConnection(DatabaseConnectionString))
                {
                    await sqlConnection.OpenAsync();

                    const string VillainExistsQueryString = @"SELECT 1 FROM Villains WHERE Id = @VillainToDeleteId";

                    await using (SqlCommand villainExistsSqlCommand = new SqlCommand(VillainExistsQueryString, sqlConnection))
                    {
                        villainExistsSqlCommand.Parameters.AddWithValue("@VillainToDeleteId", villainToDeleteId);

                        var villainExistsQueryResult = await villainExistsSqlCommand.ExecuteScalarAsync();

                        if (villainExistsQueryResult == null)
                        {
                            Console.WriteLine($"No such villain was found.");
                        }
                        else
                        {
                            const string VillainToDeleteNameByIdQueryString = @"SELECT v.[Name] FROM Villains AS v WHERE Id = @VillainToDeleteId";

                            SqlCommand villainToDeleteNameByIdSqlCommand = new SqlCommand(VillainToDeleteNameByIdQueryString, sqlConnection);

                            villainToDeleteNameByIdSqlCommand.Parameters.AddWithValue("@VillainToDeleteId", villainToDeleteId);

                            string villainToDeleteNameByIdQueryResult = (string) await villainToDeleteNameByIdSqlCommand.ExecuteScalarAsync();

                            const string ReleaseMinionsQueryString = @"DELETE FROM MinionsVillains WHERE VillainId = @VillainToDeleteId";

                            await using (SqlCommand releaseMinionsSqlCommand = new SqlCommand(ReleaseMinionsQueryString, sqlConnection))
                            {
                                releaseMinionsSqlCommand.Parameters.AddWithValue("@VillainToDeleteId", villainToDeleteId);

                                int releaseMinionsQueryResult = await releaseMinionsSqlCommand.ExecuteNonQueryAsync();

                                const string DeleteVillainQueryString = @"DELETE FROM Villains WHERE Id = @VillainToDeleteId";

                                await using (SqlCommand deleteVillainSqlCommand = new SqlCommand(DeleteVillainQueryString, sqlConnection))
                                {
                                    deleteVillainSqlCommand.Parameters.AddWithValue("@VillainToDeleteId", villainToDeleteId);

                                    int deleteVillainQueryResult = await deleteVillainSqlCommand.ExecuteNonQueryAsync();

                                    if (deleteVillainQueryResult == 1)
                                    {
                                        Console.WriteLine($"{villainToDeleteNameByIdQueryResult} was deleted.");
                                        Console.WriteLine($"{releaseMinionsQueryResult} minions were released.");
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
