using OnTimeForExamConsoleMVC.Models;
using OnTimeForExamConsoleMVC.Views;
using System;
using System.Collections.Generic;
using System.Text;

namespace OnTimeForExamConsoleMVC.Controllers
{
    public class OnTimeForExamController
    {
        private ExamInfo examInfo;

        private Display display;

        public OnTimeForExamController()
        {
            display = new Display();
            examInfo = new ExamInfo(display.ExamHour, display.ExamMinutes, display.ArrivalHour, display.ArrivalMinutes);
            display.ExamArrivalDetails = examInfo.CheckForLateExamArrival();
            display.ShowExamArrivalDetails();
        }
    }
}
