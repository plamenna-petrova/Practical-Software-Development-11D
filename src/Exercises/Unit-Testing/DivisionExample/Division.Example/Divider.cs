using System;
using System.Collections.Generic;
using System.Text;

namespace Division.Example
{
    public class Divider
    {
        public int Divide(int x, int y)
        {
            if (y == 0)
            {
                throw new InvalidOperationException("Cannot divide by zero");
            }

            return x / y;
        }
    }
}
