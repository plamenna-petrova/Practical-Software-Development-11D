using System;
using System.Data.SqlClient;
using System.Linq;

namespace AddAMinion
{
    public class Program
    {
        static void Main(string[] args)
        {
            try
            {
                const string DatabaseConnectionString = @"Server=LENOVOLEGION\SQLEXPRESS;Database=MinionsDB;Integrated Security=true;";

                string[] minionCommandTokens = Console.ReadLine().Split(new char[] { '.', ' ' }).Skip(1).ToArray();

                string minionName = minionCommandTokens[0];
                int minionAge = int.Parse(minionCommandTokens[1]);
                string townName = minionCommandTokens[2];

                string villainName = Console.ReadLine().Split(new char[] { '.', ' ' }).Skip(1).ToArray()[0];

                using (SqlConnection sqlConnection = new SqlConnection(DatabaseConnectionString))
                {
                    sqlConnection.Open();

                    const string TownExistsQueryString = @"SELECT 1 FROM Towns WHERE [Name] = @TownName";

                    SqlCommand townExistsSqlCommand = new SqlCommand(TownExistsQueryString, sqlConnection);

                    townExistsSqlCommand.Parameters.AddWithValue("@TownName", townName);

                    int townExistsQueryResult = (int)townExistsSqlCommand.ExecuteScalar();

                    if (townExistsQueryResult == 0)
                    {
                        const string InsertTownQueryString = @"INSERT INTO Towns ([Name], CountryCode) VALUES (@TownName, 1)";

                        using (SqlCommand insertTownSqlCommand = new SqlCommand(InsertTownQueryString, sqlConnection))
                        {
                            insertTownSqlCommand.Parameters.AddWithValue("@TownName", townName);

                            int insertTownQueryResult = insertTownSqlCommand.ExecuteNonQuery();

                            if (insertTownQueryResult == 1)
                            {
                                Console.WriteLine($"Town {townName} was added to the database.");
                            }
                        }
                    }

                    const string VillainExistsQueryString = @"SELECT 1 FROM Villains WHERE [Name] = @VillainName";

                    using (SqlCommand villainExistsSqlCommand = new SqlCommand(VillainExistsQueryString, sqlConnection))
                    {
                        villainExistsSqlCommand.Parameters.AddWithValue("@VillainName", villainName);

                        int villainExistsQueryResult = (int)villainExistsSqlCommand.ExecuteScalar();

                        if (villainExistsQueryResult == 0)
                        {
                            const string EvilnessFactorExistsQueryString = @"SELECT 1 FROM EvilnessFactors WHERE [Name] = 'Evil'";

                            using (SqlCommand evilnessFactorExistsSqlCommand = new SqlCommand(EvilnessFactorExistsQueryString, sqlConnection))
                            {
                                int evilnessFactorExistsQueryResult = (int)evilnessFactorExistsSqlCommand.ExecuteScalar();

                                if (evilnessFactorExistsQueryResult == 0)
                                {
                                    const string InsertEvilnessFactorQueryString = @"INSERT INTO EvilnessFactors ([Name]) VALUES ('Evil')";

                                    using (SqlCommand insertEvilnessFactorSqlCommand = new SqlCommand(InsertEvilnessFactorQueryString, sqlConnection))
                                    {
                                        insertEvilnessFactorSqlCommand.ExecuteNonQuery();
                                    }
                                }
                            }

                            const string EvilnessFactorIdQueryString = @"SELECT Id FROM EvilnessFactors WHERE [Name] = 'Evil'";

                            SqlCommand evilFactorIdSqlCommand = new SqlCommand(EvilnessFactorIdQueryString, sqlConnection);

                            int evilFactorId = (int)evilFactorIdSqlCommand.ExecuteScalar();

                            const string InsertVillainQueryString = @"
                                INSERT INTO Villains ([Name], EvilnessFactorId)
                                VALUES (@VillainName, @EvilFactorId)
                            ";

                            using (SqlCommand insertVillainSqlCommand = new SqlCommand(InsertVillainQueryString, sqlConnection))
                            {
                                insertVillainSqlCommand.Parameters.AddWithValue("@VillainName", villainName);
                                insertVillainSqlCommand.Parameters.AddWithValue("@EvilFactorId", evilFactorId);

                                int insertVillainQueryResult = insertVillainSqlCommand.ExecuteNonQuery();

                                if (insertVillainQueryResult == 1)
                                {
                                    Console.WriteLine($"Villain {villainName} was added to the database.");
                                }
                            }
                        }
                    }

                    const string TownIdByNameQueryString = @"SELECT Id FROM Towns WHERE [Name] = @TownName";

                    SqlCommand townIdByNameSqlCommand = new SqlCommand(TownIdByNameQueryString, sqlConnection);

                    townIdByNameSqlCommand.Parameters.AddWithValue("@TownName", townName);

                    int townIdByNameQueryResult = (int) townIdByNameSqlCommand.ExecuteScalar();

                    const string InsertMinionQueryString = @"
                        INSERT INTO Minions ([Name], Age, TownId)
                        VALUES (@MinionName, @Age, @TownId)
                    ";

                    using (SqlCommand insertMinionSqlCommand = new SqlCommand(InsertMinionQueryString, sqlConnection))
                    {
                        insertMinionSqlCommand.Parameters.AddWithValue("@MinionName", minionName);
                        insertMinionSqlCommand.Parameters.AddWithValue("@Age", minionAge);
                        insertMinionSqlCommand.Parameters.AddWithValue("@TownId", townIdByNameQueryResult);

                        int insertMinionQueryResult = insertMinionSqlCommand.ExecuteNonQuery();

                        if (insertMinionQueryResult == 1) 
                        {
                            const string VillainIdByNameQueryString = @"SELECT Id FROM Villains WHERE [Name] = @VillainName";

                            SqlCommand villainIdByNameSqlCommand = new SqlCommand(VillainIdByNameQueryString, sqlConnection);

                            villainIdByNameSqlCommand.Parameters.AddWithValue("@VillainName", villainName);

                            int villainIdByNameQueryResult = (int)villainIdByNameSqlCommand.ExecuteScalar();

                            const string LatestMinionIdByNameQueryString = @"
                                SELECT TOP(1) Id FROM Minions 
                                WHERE [Name] = @MinionName 
                                ORDER BY Id DESC
                            ";

                            SqlCommand latestMinionIdByNameSqlCommand = new SqlCommand(LatestMinionIdByNameQueryString, sqlConnection);

                            latestMinionIdByNameSqlCommand.Parameters.AddWithValue("@MinionName", minionName);

                            int latestMinionIdByNameQueryResult = (int) latestMinionIdByNameSqlCommand.ExecuteScalar();

                            const string insertMinionsVillainsMappingQueryString = @"
                                INSERT INTO MinionsVillains (MinionId, VillainId)
                                VALUES (@MinionId, @VillainId)
                            ";

                            using (SqlCommand insertMinionsVillainsMappingSqlCommand = new SqlCommand(insertMinionsVillainsMappingQueryString, sqlConnection))
                            {
                                insertMinionsVillainsMappingSqlCommand.Parameters.AddWithValue("@MinionId", latestMinionIdByNameQueryResult);
                                insertMinionsVillainsMappingSqlCommand.Parameters.AddWithValue("@VillainId", villainIdByNameQueryResult);

                                int insertMinionsVillainsMappingQueryResult = insertMinionsVillainsMappingSqlCommand.ExecuteNonQuery();

                                if (insertMinionsVillainsMappingQueryResult == 1) 
                                {
                                    Console.WriteLine($"Successfully added {minionName} to be minion of {villainName}");
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
