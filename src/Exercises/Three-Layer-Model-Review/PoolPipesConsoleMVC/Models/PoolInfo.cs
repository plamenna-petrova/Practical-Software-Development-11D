using System;
using System.Collections.Generic;
using System.Text;

namespace PoolPipesConsoleMVC.Models
{
    public class PoolInfo
    {
        private int poolVolumeInLiters;

        private int firstPipeHourDebit;

        private int secondPipeHourDebit;

        private double workerAbsenceHours;

        public PoolInfo(int poolVolumeInLiters, int firstPipeHourDebit, int secondPipeHourDebit, double workerAbsenceHours)
        {
            this.PoolVolumeInLiters = poolVolumeInLiters;
            this.FirstPipeHourDebit = firstPipeHourDebit;
            this.SecondPipeHourDebit = secondPipeHourDebit;
            this.WorkerAbsenceHours = workerAbsenceHours;
        }

        public int PoolVolumeInLiters
        {
            get
            {
                return poolVolumeInLiters;
            }

            set
            {
                poolVolumeInLiters = value;
            }
        }

        public int FirstPipeHourDebit
        {
            get
            {
                return firstPipeHourDebit;
            }

            set
            {
                firstPipeHourDebit = value;
            }
        }

        public int SecondPipeHourDebit
        {
            get
            {
                return secondPipeHourDebit;
            }

            set
            {
                secondPipeHourDebit = value;
            }
        }

        public double WorkerAbsenceHours
        {
            get
            {
                return workerAbsenceHours;
            }

            set
            {
                workerAbsenceHours = value;
            }
        }

        public string GetPoolState()
        {
            double firstPipeFillAmount = WorkerAbsenceHours * FirstPipeHourDebit;
            double secondPipeFillAmount = WorkerAbsenceHours * SecondPipeHourDebit;
            double totalPoolFillAmount = firstPipeFillAmount + secondPipeFillAmount;

            if (totalPoolFillAmount <= PoolVolumeInLiters)
            {
                double poolFillPercentage = (totalPoolFillAmount / poolVolumeInLiters) * 100;
                double firstPipeFillPercentage = (firstPipeFillAmount / totalPoolFillAmount) * 100;
                double secondPipeFillPercentage = (secondPipeFillAmount / totalPoolFillAmount) * 100;

                return $"The pool is {Math.Truncate(poolFillPercentage)}% full. Pipe 1: " +
                    $"{Math.Truncate(firstPipeFillPercentage)}%. " +
                    $"Pipe 2: {Math.Truncate(secondPipeFillPercentage)}%.";
            }

            return $"For {WorkerAbsenceHours} hours the pool overflows with " +
                $"{totalPoolFillAmount - PoolVolumeInLiters} liters.";
        }
    }
}
