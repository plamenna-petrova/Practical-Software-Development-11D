﻿using System;
using System.Collections.Generic;
using System.Text;

namespace OrdersBadCode.Models
{
    public class product
    {
        public int id { get; set; }

        public string nome { get; set; }

        public int catId { get; set; }

        public decimal unit_price { get; set; }

        public int UnitsInStock { get; set; }
    }
}
