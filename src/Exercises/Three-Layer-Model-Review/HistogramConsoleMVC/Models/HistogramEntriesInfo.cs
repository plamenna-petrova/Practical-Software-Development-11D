using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HistogramConsoleMVC.Models
{
    public class HistogramEntriesInfo
    {
        private int[] entries;

        public HistogramEntriesInfo(int[] entries)
        {
            this.Entries = entries;
        }

        public int[] Entries
        {
            get { return this.entries; }
            set { this.entries = value; }
        }

        public double[] GetHistogramPercentageEntries()
        {
            int allHistogramEntriesCount = Entries.Length;

            List<int> firstRangeNumbers = Entries.Where(n => n < 200).ToList();
            double firstRangeNumbersPercentage = CalculatePercentageForPartition(firstRangeNumbers.Count, allHistogramEntriesCount);

            List<int> secondRangeNumbers = Entries.Where(n => n >= 200 && n <= 399).ToList();
            double secondRangeNumbersPercentage = CalculatePercentageForPartition(secondRangeNumbers.Count, allHistogramEntriesCount);

            List<int> thirdRangeNumbers = Entries.Where(n => n >= 400 && n <= 599).ToList();
            double thirdRangeNumbersPercentage = CalculatePercentageForPartition(thirdRangeNumbers.Count, allHistogramEntriesCount);

            List<int> fourthRangeNumbers = Entries.Where(n => n >= 600 && n <= 799).ToList();
            double fourthRangeNumbersPercentage = CalculatePercentageForPartition(fourthRangeNumbers.Count, allHistogramEntriesCount);

            List<int> fifthRangeNumbers = Entries.Where(n => n >= 800).ToList();
            double fifthRangeNumbersPercentage = CalculatePercentageForPartition(fifthRangeNumbers.Count, allHistogramEntriesCount);

            double[] histogramPercentageEntries = new double[]
            {
                firstRangeNumbersPercentage,
                secondRangeNumbersPercentage,
                thirdRangeNumbersPercentage,
                fourthRangeNumbersPercentage,
                fifthRangeNumbersPercentage
            };

            return histogramPercentageEntries;
        }

        private double CalculatePercentageForPartition(int partitionEntriesCount, int totalEntriesCount)
        {
            return ((double) partitionEntriesCount / totalEntriesCount) * 100;
        }
    }
}
