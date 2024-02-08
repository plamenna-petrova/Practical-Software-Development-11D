using System;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace VillainsNamesAsync
{
    public class Program
    {
        static async Task Main(string[] args)
        {
            const string DatabaseConnectionString = @"Server=.;Database=MinionsDB;Integrated Security=true;";

            await using (SqlConnection sqlConnection = new SqlConnection(DatabaseConnectionString))
            {
                await sqlConnection.OpenAsync();

                const string VillainsWithMoreThanThreeMinionsQueryString = @"
                    SELECT v.[Name] AS VillainName, COUNT(mv.MinionId) AS MinionsCount
                    FROM Villains AS v
                    JOIN MinionsVillains AS mv ON v.Id = mv.VillainId
                    GROUP BY v.[Name]
                    HAVING COUNT(mv.MinionId) > 3
                    ORDER BY MinionsCount DESC
                ";

                await using (SqlCommand villainsWithMoreThanThreeMinionsSqlCommand = new SqlCommand(VillainsWithMoreThanThreeMinionsQueryString, sqlConnection))
                {
                    SqlDataReader villainsWithMoreThanThreeMinionsSqlDataReader = await villainsWithMoreThanThreeMinionsSqlCommand.ExecuteReaderAsync();

                    await using (villainsWithMoreThanThreeMinionsSqlDataReader)
                    {
                        while (await villainsWithMoreThanThreeMinionsSqlDataReader.ReadAsync())
                        {
                            string villainName = villainsWithMoreThanThreeMinionsSqlDataReader.GetString(0);
                            int minionsCount = villainsWithMoreThanThreeMinionsSqlDataReader.GetInt32(1);

                            Console.WriteLine($"{villainName} - {minionsCount}");
                        }
                    }
                }
            }           
        }
    }
}
