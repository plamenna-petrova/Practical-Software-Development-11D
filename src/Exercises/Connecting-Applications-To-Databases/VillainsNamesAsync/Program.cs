using System;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace VillainsNamesAsync
{
    public class Program
    {
        static async Task Main(string[] args)
        {
            try
            {
                const string DatabaseConnectionString = @"Server=LENOVOLEGION\SQLEXPRESS;Database=MinionsDB;Integrated Security=true;";

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
                        SqlDataReader sqlDataReader = await villainsWithMoreThanThreeMinionsSqlCommand.ExecuteReaderAsync();

                        await using (sqlDataReader)
                        {
                            while (await sqlDataReader.ReadAsync())
                            {
                                string villainName = sqlDataReader.GetString(0);
                                int minionsCount = sqlDataReader.GetInt32(1);

                                Console.WriteLine($"{villainName} - {minionsCount}");
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
