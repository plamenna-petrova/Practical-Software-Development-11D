using System;
using System.Collections.Generic;
using System.Text;

namespace OrdersBadCode.Models
{
    public class order
    {
        public int ID { get; set; }

        public int product_id { get; set; }

        public int quant { get; set; }

        public decimal Discount { get; set; }
    }
}
