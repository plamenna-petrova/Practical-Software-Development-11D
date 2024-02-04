using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DivisionWithoutRemainderConsoleMVC.Models
{
    public class NumbersInfo
    {
        private List<int> numberEntries;

        public NumbersInfo(List<int> numberEntries)
        {
            NumberEntries = numberEntries;
        }

        public List<int> NumberEntries
        {
            get
            {
                return numberEntries;
            }

            set
            {
                numberEntries = value;
            }
        }

        public List<double> GetNumbersDividedWithoutRemainderPercentageEntries()
        {
            int allNumberEntriesCount = NumberEntries.Count;

            List<int> firstRangeNumbers = NumberEntries.Where(n => n % 2 == 0).ToList();
            double firstRangeNumbersPercentage = CalculatePercentageForPartition(firstRangeNumbers.Count, allNumberEntriesCount);

            List<int> secondRangeNumbers = NumberEntries.Where(n => n % 3 == 0).ToList();
            double secondRangeNumbersPercentage = CalculatePercentageForPartition(secondRangeNumbers.Count, allNumberEntriesCount);

            List<int> thirdRangeNumbers = NumberEntries.Where(n => n % 4 == 0).ToList();
            double thirdRangeNumbersPercentage = CalculatePercentageForPartition(thirdRangeNumbers.Count, allNumberEntriesCount);

            List<double> numbersDividedWithoutRemainderPercentageEntries = new List<double>
            {
                firstRangeNumbersPercentage,
                secondRangeNumbersPercentage,
                thirdRangeNumbersPercentage
            };

            return numbersDividedWithoutRemainderPercentageEntries;
        }

        private double CalculatePercentageForPartition(int partitionEntriesCount, int totalEntriesCount)
        {
            return (double)partitionEntriesCount / totalEntriesCount * 100;
        }
    }
}
