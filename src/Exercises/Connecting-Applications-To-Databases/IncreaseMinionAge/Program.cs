using System;
using System.Data.SqlClient;
using System.Linq;

namespace IncreaseMinionAge
{
    public class Program
    {
        static void Main(string[] args)
        {
            try
            {
                string[] minionIds = Console.ReadLine().Split().ToArray();

                const string DatabaseConnectionString = @"Server=DESKTOP-H75JB3P;Database=MinionsDB;Integrated Security=true;";

                using (SqlConnection sqlConnection = new SqlConnection(DatabaseConnectionString))
                {
                    sqlConnection.Open();

                    foreach (var minionId in minionIds)
                    {
                        const string UpdateMinionAgeAndMakeFirstLetterOfNameUppercaseQueryString = @"
                            UPDATE Minions
                            SET Age = Age + 1, [Name] = UPPER(LEFT([Name], 1)) + LOWER(SUBSTRING([Name], 2, LEN([Name]) - 1))
                            WHERE Id = @MinionToUpdateId
                        ";

                        SqlCommand updateMinionAgeAndMakeFirstLetterOfNameUppercaseSqlCommand = new SqlCommand(UpdateMinionAgeAndMakeFirstLetterOfNameUppercaseQueryString, sqlConnection);

                        updateMinionAgeAndMakeFirstLetterOfNameUppercaseSqlCommand.Parameters.AddWithValue("@MinionToUpdateId", minionId);
                        updateMinionAgeAndMakeFirstLetterOfNameUppercaseSqlCommand.ExecuteNonQuery();
                    }

                    const string MinionNameAndAgeQueryString = @"SELECT m.[Name], m.Age FROM Minions As m";

                    using (SqlCommand minionNameAndAgeSqlCommand = new SqlCommand(MinionNameAndAgeQueryString, sqlConnection))
                    {
                        SqlDataReader sqlDataReader = minionNameAndAgeSqlCommand.ExecuteReader();

                        if (sqlDataReader.HasRows)
                        {
                            while (sqlDataReader.Read())
                            {
                                Console.WriteLine($"{sqlDataReader["Name"]} {sqlDataReader["Age"]}");
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
