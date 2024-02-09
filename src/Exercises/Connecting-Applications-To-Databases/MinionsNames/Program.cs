using System;
using System.Data.SqlClient;

namespace MinionsNames
{
    public class Program
    {
        static void Main(string[] args)
        {
            try
            {
                int villainId = int.Parse(Console.ReadLine());

                const string DatabaseConnectionString = @"Server=LENOVOLEGION\SQLEXPRESS;Database=MinionsDB;Integrated Security=true;";

                using (SqlConnection sqlConnection = new SqlConnection(DatabaseConnectionString))
                {
                    sqlConnection.Open();

                    const string VillainExistsQueryString = @"SELECT 1 FROM Villains WHERE Id = @VillainId";

                    using (SqlCommand villainExistsSqlCommand = new SqlCommand(VillainExistsQueryString, sqlConnection))
                    {
                        villainExistsSqlCommand.Parameters.AddWithValue("@VillainId", villainId);

                        var villainExistsQueryResult = villainExistsSqlCommand.ExecuteScalar();

                        if (villainExistsQueryResult == null)
                        {
                            Console.WriteLine($"No villain with ID {villainId} exists in the database.");
                            return;
                        }

                        const string VillainNameByIdQueryString = @"SELECT v.[Name] FROM Villains AS v WHERE v.Id = @VillainId";

                        using (SqlCommand villainNameByIdSqlCommand = new SqlCommand(VillainNameByIdQueryString, sqlConnection))
                        {
                            villainNameByIdSqlCommand.Parameters.AddWithValue("@VillainId", villainId);

                            string villainNameQueryResult = (string) villainNameByIdSqlCommand.ExecuteScalar();

                            const string MinionsInfoByVillainIdSqlCommand = @"
                                SELECT m.[Name] AS MinionName, m.Age AS MinionAge
	                            FROM Minions AS m
	                            JOIN MinionsVillains AS mv ON m.Id = mv.MinionId
	                            JOIN Villains AS v ON mv.VillainId = v.Id
	                            WHERE v.Id = @VillainId
	                            ORDER BY MinionName ASC
                            ";

                            using (SqlCommand minionsInfoByVillainIdSqlCommand = new SqlCommand(MinionsInfoByVillainIdSqlCommand, sqlConnection))
                            {
                                minionsInfoByVillainIdSqlCommand.Parameters.AddWithValue("@VillainId", villainId);

                                using (SqlDataReader sqlDataReader = minionsInfoByVillainIdSqlCommand.ExecuteReader()) 
                                {
                                    Console.WriteLine($"Villain: {villainNameQueryResult}");

                                    if (!sqlDataReader.HasRows) 
                                    {
                                        Console.WriteLine($"(no minions)");
                                    }
                                    else
                                    {
                                        int i = 0;

                                        while (sqlDataReader.Read())
                                        {
                                            string minionName = sqlDataReader.GetString(0);
                                            int minionAge = sqlDataReader.GetInt32(1);

                                            Console.WriteLine($"{++i}. {minionName} {minionAge}");
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
