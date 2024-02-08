using System;
using System.Data.SqlClient;

namespace MinionsNames
{
    public class Program
    {
        static void Main(string[] args)
        {
            const string DatabaseConnectionString = @"Server=.;Database=MinionsDB;Integrated Security=true;";

            Console.Write("Enter villain Id: ");
            int villainId = int.Parse(Console.ReadLine());

            using (SqlConnection sqlConnection = new SqlConnection(DatabaseConnectionString))
            {
                sqlConnection.Open();

                const string VillainExistsQueryString = @"SELECT 1 FROM Villains WHERE Id = @VillainId";

                using (SqlCommand villainExistsSqlCommand = new SqlCommand(VillainExistsQueryString, sqlConnection))
                {
                    villainExistsSqlCommand.Parameters.AddWithValue("@VillainId", villainId);

                    int villainExistsQueryResult = (int)villainExistsSqlCommand.ExecuteScalar();

                    if (villainExistsQueryResult == 0)
                    {
                        Console.WriteLine($"No villain with ID {villainId} exists in the database.");
                        return;
                    }

                    const string VillainNameByIdQueryString = @"SELECT v.[Name] FROM Villains AS v WHERE Id = @VillainId";

                    using (SqlCommand villainNameByIdSqlCommand = new SqlCommand(VillainNameByIdQueryString, sqlConnection))
                    {
                        villainNameByIdSqlCommand.Parameters.AddWithValue("@VillainId", villainId);

                        string villainNameQueryResult = (string)villainNameByIdSqlCommand.ExecuteScalar();

                        const string MinionsInfoByVillainIdQueryString = @"
                            SELECT TOP 100 PERCENT
		                        ROW_NUMBER() OVER (ORDER BY m.[Name]) AS RowNumber,
		                        m.[Name] AS MinionName,
		                        m.Age AS MinionAge
	                        FROM Minions AS m
	                        JOIN MinionsVillains AS mv ON m.Id = mv.MinionId
	                        JOIN Villains AS v ON mv.VillainId = v.Id
	                        WHERE v.Id = @VillainId
	                        ORDER BY MinionName ASC
                        ";

                        using (SqlCommand minionsInfoByVillainIdSqlCommand = new SqlCommand(MinionsInfoByVillainIdQueryString, sqlConnection))
                        {
                            minionsInfoByVillainIdSqlCommand.Parameters.AddWithValue("@VillainId", villainId);

                            SqlDataReader minionsInfoByVillainIdSqlDataReader = minionsInfoByVillainIdSqlCommand.ExecuteReader();

                            using (minionsInfoByVillainIdSqlDataReader)
                            {
                                Console.WriteLine($"Villain: {villainNameQueryResult}");

                                if (!minionsInfoByVillainIdSqlDataReader.HasRows)
                                {
                                    Console.WriteLine("(no minions)");
                                }
                                else
                                {
                                    while (minionsInfoByVillainIdSqlDataReader.Read())
                                    {
                                        long rowNumber = minionsInfoByVillainIdSqlDataReader.GetInt64(0);
                                        string villainName = minionsInfoByVillainIdSqlDataReader.GetString(1);
                                        int minionsCount = minionsInfoByVillainIdSqlDataReader.GetInt32(1);

                                        Console.WriteLine($"{rowNumber}. {villainName} {minionsCount}");
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
