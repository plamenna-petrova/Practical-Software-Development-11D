using System;
using System.Collections.Generic;
using System.Text;

namespace OnTimeForExamConsoleMVC.Models
{
    public class ExamInfo
    {
        private int examHour;

        private int examMinutes;

        private int arrivalHour;

        private int arrivalMinutes;

        public ExamInfo(int examHour, int examMinutes, int arrivalHour, int arrivalMinutes)
        {
            ExamHour = examHour;
            ExamMinute = examMinutes;
            ArrivalHour = arrivalHour;
            ArrivalMinutes = arrivalMinutes;
        }

        public int ExamHour
        {
            get
            {
                return this.examHour;
            }

            set
            {
                this.examHour = value;
            }
        }

        public int ExamMinute
        {
            get
            {
                return this.examMinutes;
            }

            set
            {
                this.examMinutes = value;    
            }
        }

        public int ArrivalHour
        {
            get
            {
                return this.arrivalHour;
            }

            set
            {
                this.arrivalHour = value;
            }
        }

        public int ArrivalMinutes
        {
            get 
            { 
                return this.arrivalMinutes;
            }

            set
            {
                this.arrivalMinutes = value;
            }
        }

        public string CheckForLateExamArrival()
        {
            int totalArrivalMinutes = ArrivalHour * 60 + ArrivalMinutes;
            int totalExamMinutes = ExamHour * 60 + ExamMinute;

            int totalTimeDifference = totalExamMinutes - totalArrivalMinutes;

            int arrivalHourDifference = 0;

            string examArrivalMessage = string.Empty;

            if (totalTimeDifference == 0 || totalTimeDifference > 0 && totalTimeDifference <= 30)
            {
                examArrivalMessage = "On time";

                if (totalTimeDifference != 0)
                {
                    examArrivalMessage += $"\n{totalTimeDifference} before the start";
                }
            }
            else if (totalTimeDifference > 30)
            {
                examArrivalMessage = "Early";

                while (totalTimeDifference > 59)
                {
                    arrivalHourDifference++;
                    totalTimeDifference -= 60;
                }

                if (arrivalHourDifference > 0)
                {
                    examArrivalMessage += $"\n{arrivalHourDifference}:{totalTimeDifference} hours before the start";
                }
                else
                {
                    examArrivalMessage += $"\n{totalTimeDifference} minutes before the start";
                }
            }
            else
            {
                examArrivalMessage += "Late";

                totalTimeDifference = Math.Abs(totalTimeDifference);

                while (totalTimeDifference > 59)
                {
                    arrivalHourDifference++;
                    totalTimeDifference -= 60;
                }

                if (arrivalHourDifference > 0)
                {
                    examArrivalMessage += $"\n{arrivalHourDifference}:{totalTimeDifference} hours after the start";
                }
                else
                {
                    examArrivalMessage += $"\n{totalTimeDifference} minutes after the start";
                }
            }

            return examArrivalMessage;
        }
    }
}
