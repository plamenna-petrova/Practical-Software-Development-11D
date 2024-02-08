using System;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace VillainsNames
{
    public class Program
    {
        static void Main(string[] args)
        {
            const string DatabaseConnectionString = @"Server=.;Database=MinionsDB;Integrated Security=true;";

            using (SqlConnection sqlConnection = new SqlConnection(DatabaseConnectionString))
            {
                sqlConnection.Open();

                const string VillainsWithMoreThanThreeMinionsQueryString = @"
                    SELECT v.[Name] AS VillainName, COUNT(mv.MinionId) AS MinionsCount
                    FROM Villains AS v
                    JOIN MinionsVillains AS mv ON v.Id = mv.VillainId
                    GROUP BY v.[Name]
                    HAVING COUNT(mv.MinionId) > 3
                    ORDER BY MinionsCount DESC
                ";

                using (SqlCommand villainsWithMoreThanThreeMinionsSqlCommand = new SqlCommand(VillainsWithMoreThanThreeMinionsQueryString, sqlConnection))
                {
                    SqlDataReader villainsWithMoreThanThreeMinionsSqlDataReader = villainsWithMoreThanThreeMinionsSqlCommand.ExecuteReader();

                    using (villainsWithMoreThanThreeMinionsSqlDataReader)
                    {
                        while (villainsWithMoreThanThreeMinionsSqlDataReader.Read())
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
