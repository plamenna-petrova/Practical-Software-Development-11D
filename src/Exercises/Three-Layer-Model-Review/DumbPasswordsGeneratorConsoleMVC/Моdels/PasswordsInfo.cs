using System;
using System.Collections.Generic;
using System.Text;

namespace DumbPasswordsGeneratorConsoleMVC.Моdels
{
    public class PasswordsInfo
    {
        private int endRangeNumber;

        private int endRangeLetter;

        public PasswordsInfo(int endRangeNumber, int endRangeLetter)
        {
            EndRangeNumber = endRangeNumber;
            EndRangeLetter = endRangeLetter;
        }

        public int EndRangeNumber
        {
            get
            {
                return endRangeNumber;
            }

            set
            {
                endRangeNumber = value;
            }
        }

        public int EndRangeLetter
        {
            get
            {
                return endRangeLetter;
            }

            set
            {
                endRangeLetter = value;
            }
        }

        public List<string> GeneratedDumbPasswords()
        {
            List<string> dumbPasswordsList = new List<string>();

            for (int i = 1; i <= EndRangeNumber; i++)
            {
                for (int j = 1; j <= EndRangeNumber; j++)
                {
                    for (char k = 'a'; k < 'a' + EndRangeLetter; k++)
                    {
                        for (char q = 'a'; q < 'a' + EndRangeLetter; q++)
                        {
                            for (int p = Math.Max(i, j) + 1; p <= EndRangeNumber; p++)
                            {
                                dumbPasswordsList.Add($"{i}{j}{k}{q}{p}");
                            }
                        }
                    }
                }
            }

            return dumbPasswordsList;
        }
    }
}
