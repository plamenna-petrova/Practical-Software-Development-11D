using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace GetAllMinionsNames
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

                    const string AllMinionsNamesQueryString = @"SELECT m.[Name] FROM Minions as m";

                    using (SqlCommand allMinionsNamesSqlCommand = new SqlCommand(AllMinionsNamesQueryString, sqlConnection))
                    {
                        SqlDataReader sqlDataReader = allMinionsNamesSqlCommand.ExecuteReader();

                        if (sqlDataReader.HasRows)
                        {
                            List<string> minionsNames = new List<string>();

                            while (sqlDataReader.Read())
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
