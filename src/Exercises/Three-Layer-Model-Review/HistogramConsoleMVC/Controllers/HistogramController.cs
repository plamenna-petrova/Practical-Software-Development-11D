using HistogramConsoleMVC.Models;
using HistogramConsoleMVC.Views;
using System;
using System.Collections.Generic;
using System.Text;

namespace HistogramConsoleMVC.Controllers
{
    public class HistogramController
    {
        private HistogramEntriesInfo numbersInfo;

        private Display display;

        public HistogramController()
        {
            display = new Display();
            numbersInfo = new HistogramEntriesInfo(display.HistogramEntries);
            display.HistogramPartitionPercentages = numbersInfo.GetHistogramPercentageEntries();
            display.ShowHistogramEntriesPartitionPercentages();
        }
    }
}
