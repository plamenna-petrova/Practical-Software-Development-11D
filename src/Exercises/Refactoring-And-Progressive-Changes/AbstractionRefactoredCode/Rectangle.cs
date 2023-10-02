using System;

namespace Abstraction
{
    public class Rectangle : Figure
    {
        private double width;

        private double height;

        public Rectangle(double width, double height)
        {
            Width = width; 
            Height = height;
        }

        public double Width
        {
            get
            {
                return width;
            }

            set
            {
                if (width <= 0)
                {
                    throw new ArgumentNullException("The width cannot be negative");
                }

                width = value;
            }
        }

        public double Height
        {
            get
            {
                return height;
            }

            set
            {
                if (height <= 0)
                {
                    throw new ArgumentNullException("The height cannot be negative");
                }

                height = value;
            }
        }

        public override double CalculatePerimeter()
        {
            double perimeter = 2 * (this.Width + this.Height);
            return perimeter;
        }

        public override double CalculateSurface()
        {
            double surface = this.Width * this.Height;
            return surface;
        }
    }
}

