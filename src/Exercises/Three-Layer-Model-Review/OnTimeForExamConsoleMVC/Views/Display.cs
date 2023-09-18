using System;
using System.Collections.Generic;
using System.Text;

namespace OnTimeForExamConsoleMVC.Views
{
    public class Display
    {
        public Display()
        {
            ExamHour = 0;
            ExamMinutes = 0;
            ArrivalHour = 0;
            ArrivalMinutes = 0;
            GetValues();
        }

        public int ExamHour { get; set; }

        public int ExamMinutes { get; set; }

        public int ArrivalHour { get; set; }

        public int ArrivalMinutes { get; set; }

        public string ExamArrivalDetails { get; set; }

        public void ShowExamArrivalDetails()
        {
            Console.WriteLine(ExamArrivalDetails);
        }

        private void GetValues()
        {
            ExamHour = int.Parse(Console.ReadLine());
            ExamMinutes = int.Parse(Console.ReadLine());
            ArrivalHour = int.Parse(Console.ReadLine());
            ArrivalMinutes = int.Parse((Console.ReadLine()));
        }
    }
}
