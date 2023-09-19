using System;
using System.Collections.Generic;
using System.Text;

namespace DivisionWithoutRemainderConsoleMVC.Views
{
    public class Display
    {
        public Display()
        {
            GetValues();
        }

        public List<int> NumberEntries { get; set; }

        public List<double> NumberDividedWithoutRamainderPartitionPercentages { get; set; }

        public void ShowNumbersDividedWithoutRemainderPartitionPercentages()
        {
            NumberDividedWithoutRamainderPartitionPercentages.ForEach((percentageEntry) => 
            {
                Console.WriteLine("{0:F2}%", percentageEntry);
            });
        }

        private void GetValues()
        {
            int numbersCount = int.Parse(Console.ReadLine());
            NumberEntries = new List<int>(numbersCount);

            for (int i = 0; i < numbersCount; i++)
            {
                NumberEntries.Add(int.Parse(Console.ReadLine()));
            }
        }
    }
}
