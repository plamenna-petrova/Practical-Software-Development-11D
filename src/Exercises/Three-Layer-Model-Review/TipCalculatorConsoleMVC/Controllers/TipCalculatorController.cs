using System;
using System.Collections.Generic;
using System.Text;
using TipCalculatorConsoleMVC.Models;
using TipCalculatorConsoleMVC.Views;

namespace TipCalculatorConsoleMVC.Controllers
{
    public class TipCalculatorController
    {
        private Tip tip;

        private Display display;

        public TipCalculatorController()
        {
            display = new Display();
            tip = new Tip(display.Amount, display.Percent);
            display.TipAmount = tip.CalculateTip();
            display.Total = tip.CalculateTotal();
            display.ShowTipAndTotal();
        }
    }
}
