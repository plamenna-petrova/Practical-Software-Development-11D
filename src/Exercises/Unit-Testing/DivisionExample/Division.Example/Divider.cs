using System;
using System.Collections.Generic;
using System.Text;

namespace Division.Example
{
    public class Divider
    {
        public int Divide(int x, int y)
        {
            if (y != 0)
            {
                return x / y;
            }

            return 0;
        }
    }
}
