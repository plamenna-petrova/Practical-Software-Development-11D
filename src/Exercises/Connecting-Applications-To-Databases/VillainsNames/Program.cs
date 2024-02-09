using System;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace VillainsNames
{
    public class Program
    {
        static void Main(string[] args)
        {
            try
            {
                const string DatabaseConnectionString = @"Server=LENOVOLEGION\SQLEXPRESS;Database=MinionsDB;Integrated Security=true;";

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
