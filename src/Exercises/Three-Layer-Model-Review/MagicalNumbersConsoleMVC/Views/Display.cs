using System;
using System.Collections.Generic;
using System.Text;

namespace MagicalNumbersConsoleMVC.Views
{
    public class Display
    {
        public Display()
        {
            GetValues();
        }

        public int WholeNumber { get; set; }

        public List<int> SixDigitsNumbersWithDigitsProductEqualingMagicalNumber { get; set; }

        public void ShowSixDigitsNumbersWithDigitsProductEqualingMagicalNumber()
        {
            foreach (var sixDigitNumber in SixDigitsNumbersWithDigitsProductEqualingMagicalNumber)
            {
                Console.Write($"{sixDigitNumber} ");
            }
        }

        private void GetValues()
        {
            WholeNumber = int.Parse(Console.ReadLine());
        }
    }
}
