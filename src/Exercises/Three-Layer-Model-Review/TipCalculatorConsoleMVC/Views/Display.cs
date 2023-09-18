using System;
using System.Collections.Generic;
using System.Text;

namespace TipCalculatorConsoleMVC.Views
{
    public class Display
    {
        public Display()
        {
            this.Percent = 0;
            this.Amount = 0;
            this.Total = 0;
            this.TipAmount = 0;
            GetValues();
        }

        public double Percent { get; set; }

        public double Amount { get; set; }

        public double Total { get; set; }

        public double TipAmount { get; set; }

        public void ShowTipAndTotal()
        {
            Console.WriteLine("Your tip is: {0:C}", this.TipAmount);
            Console.WriteLine("The total will be {0:C}", this.Total);
        }

        private void GetValues()
        {
            Console.WriteLine("Enter the amount of the meal:");
            this.Amount = double.Parse(Console.ReadLine());
            Console.WriteLine("Enter the percent you want to tip: ");
            this.Percent = double.Parse(Console.ReadLine());
        }
    }
}
