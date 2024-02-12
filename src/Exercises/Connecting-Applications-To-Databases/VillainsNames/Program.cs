using System;
using System.Data.SqlClient;

namespace VillainsNames
{
    public class Program
    {
        static void Main(string[] args)
        {
            try
            {
                const string DatabaseConnectionString = @"Server=DESKTOP-H75JB3P;Database=MinionsDB;Integrated Security=true;";

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

                    using (SqlCommand sqlCommand = new SqlCommand(VillainsWithMoreThanThreeMinionsQueryString, sqlConnection))
                    {
                        using (SqlDataReader sqlDataReader = sqlCommand.ExecuteReader())
                        {
                            while (sqlDataReader.Read())
                            {
                                Console.WriteLine($"{sqlDataReader["VillainName"]} - {sqlDataReader["MinionsCount"]}");
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
