using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace GetAllMinionsNamesAsync
{
    public class Program
    {
        static async Task Main(string[] args)
        {
            try
            {
                const string DatabaseConnectionString = @"Server=DESKTOP-H75JB3P;Database=MinionsDB;Integrated Security=true;";

                await using (SqlConnection sqlConnection = new SqlConnection(DatabaseConnectionString))
                {
                    await sqlConnection.OpenAsync();

                    const string AllMinionsNamesQueryString = @"SELECT m.[Name] FROM Minions as m";

                    await using (SqlCommand allMinionsNamesSqlCommand = new SqlCommand(AllMinionsNamesQueryString, sqlConnection))
                    {
                        SqlDataReader sqlDataReader = await allMinionsNamesSqlCommand.ExecuteReaderAsync();

                        if (sqlDataReader.HasRows)
                        {
                            List<string> minionsNames = new List<string>();

                            while (await sqlDataReader.ReadAsync())
                            {
                                minionsNames.Add(sqlDataReader.GetString(0));
                            }

                            for (int i = 0; i < minionsNames.Count / 2; i++)
                            {
                                Console.WriteLine(minionsNames[i]);
                                Console.WriteLine(minionsNames[minionsNames.Count - i - 1]);
                            }

                            if (minionsNames.Count % 2 != 0)
                            {
                                Console.WriteLine(minionsNames[minionsNames.Count / 2]);
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
