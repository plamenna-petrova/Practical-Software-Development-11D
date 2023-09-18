using System;
using System.Collections.Generic;
using System.Text;

namespace TipCalculatorConsoleMVC.Models
{
    public class Tip
    {
        private double amount;

        private double percent;

        public Tip(double amount, double percent)
        {
            this.Amount = amount;
            this.Percent = percent;
        }

        public Tip() : this(0, 0) 
        {
            
        }

        public double Amount
        {
            get
            {
                return this.amount;
            }

            set
            {
                this.amount = value;
            }
        }

        public double Percent
        {
            get
            {
                return this.percent;
            }

            set
            {
                if (value > 1)
                {
                    this.percent = value / 100.0;
                }
                else
                {
                    this.percent = value;
                }
            }
        }

        public double CalculateTip()
        {
            return this.Amount * this.Percent;
        }

        public double CalculateTotal()
        {
            return CalculateTip() + this.Amount;
        }
    }
}
