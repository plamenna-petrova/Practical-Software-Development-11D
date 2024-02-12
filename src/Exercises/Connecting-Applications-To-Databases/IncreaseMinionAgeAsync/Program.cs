using System;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace IncreaseMinionAgeAsync
{
    public class Program
    {
        static async Task Main(string[] args)
        {
            try
            {
                string[] minionIds = Console.ReadLine().Split().ToArray();

                const string DatabaseConnectionString = @"Server=DESKTOP-H75JB3P;Database=MinionsDB;Integrated Security=true;";

                await using (SqlConnection sqlConnection = new SqlConnection(DatabaseConnectionString))
                {
                    await sqlConnection.OpenAsync();

                    foreach (var minionId in minionIds)
                    {
                        const string UpdateMinionAgeAndMakeFirstLetterOfNameUppercaseQueryString = @"
                            UPDATE Minions
                            SET Age = Age + 1, [Name] = UPPER(LEFT([Name], 1)) + LOWER(SUBSTRING([Name], 2, LEN([Name]) - 1))
                            WHERE Id = @MinionToUpdateId
                        ";

                        SqlCommand updateMinionAgeAndMakeFirstLetterOfNameUppercaseSqlCommand = new SqlCommand(UpdateMinionAgeAndMakeFirstLetterOfNameUppercaseQueryString, sqlConnection);

                        updateMinionAgeAndMakeFirstLetterOfNameUppercaseSqlCommand.Parameters.AddWithValue("@MinionToUpdateId", minionId);
                        await updateMinionAgeAndMakeFirstLetterOfNameUppercaseSqlCommand.ExecuteNonQueryAsync();
                    }

                    const string MinionNameAndAgeQueryString = @"SELECT m.[Name], m.Age FROM Minions As m";

                    await using (SqlCommand minionNameAndAgeSqlCommand = new SqlCommand(MinionNameAndAgeQueryString, sqlConnection))
                    {
                        SqlDataReader sqlDataReader = await minionNameAndAgeSqlCommand.ExecuteReaderAsync();

                        if (sqlDataReader.HasRows)
                        {
                            while (await sqlDataReader.ReadAsync())
                            {
                                Console.WriteLine($"{sqlDataReader["Name"]} {sqlDataReader["Age"]}");
                            }
                        }
                    }

                    await sqlConnection.CloseAsync();
                }
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine(sqlException.Message);
            }
        }
    }
}
