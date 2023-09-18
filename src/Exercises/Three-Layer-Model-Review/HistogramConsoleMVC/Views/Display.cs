using System;
using System.Collections.Generic;
using System.Text;

namespace HistogramConsoleMVC.Views
{
    public class Display
    {
        public Display()
        {
            GetValues();
        }

        public int NumberOfHistogramEntries { get; set; }

        public int[] HistogramEntries { get; set; } 

        public double[] HistogramPartitionPercentages { get; set; }

        public void ShowHistogramEntriesPartitionPercentages()
        {
            foreach (var histogramPartitionPercentage in HistogramPartitionPercentages)
            {
                Console.WriteLine($"{Math.Round(histogramPartitionPercentage, 2):F2}%");
            }
        }

        private void GetValues()
        {
            NumberOfHistogramEntries = int.Parse(Console.ReadLine());
            HistogramEntries = new int[NumberOfHistogramEntries];

            for (int i = 0; i < NumberOfHistogramEntries; i++)
            {
                HistogramEntries[i] = int.Parse(Console.ReadLine());
            }
        }
    }
}
