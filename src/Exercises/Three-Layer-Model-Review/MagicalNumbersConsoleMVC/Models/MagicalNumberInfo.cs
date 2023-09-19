using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MagicalNumbersConsoleMVC.Models
{
    public class MagicalNumberInfo
    {
        private int wholeNumberValue;

        public MagicalNumberInfo(int wholeNumberValue)
        {
            WholeNumberValue = wholeNumberValue;
        }

        public int WholeNumberValue
        {
            get
            {
                return wholeNumberValue;
            }

            set
            {
                wholeNumberValue = value;
            }
        }

        public List<int> GetSixDigitsNumberWithDigitsProductEqualingMagicalNumber()
        {
            List<int> resultsList = new List<int>();

            for (int i = 100000; i <= 999999; i++)
            {
                int[] digits = i.ToString().Select(digit => int.Parse(digit.ToString())).ToArray();

                if (digits[0] * digits[1] * digits[2] * digits[3] * digits[4] * digits[5] == WholeNumberValue)
                {
                    resultsList.Add(i);
                }
            }

            return resultsList;
        }
    }
}
