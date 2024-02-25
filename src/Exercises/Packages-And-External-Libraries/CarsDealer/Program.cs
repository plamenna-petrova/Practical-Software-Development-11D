using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CarsDealer
{
    public class Car
    {
        private string model;

        private Engine engine;

        private int? weight;

        private string color;

        public Car()
        {

        }

        public Car(string model, Engine engine)
        {
            this.model = model;
            this.engine = engine;
        }

        public string Model
        {
            get { return model; }
            set { model = value; }
        }

        public Engine Engine
        {
            get { return engine; }
            set { engine = value; }
        }

        public int? Weight
        {
            get { return weight; }
            set { weight = value; }
        }

        public string Color
        {
            get { return color; }
            set { color = value; }
        }
    }

    public class Engine
    {
        private string model;

        private int power;

        private int? displacement;

        private string efficiency;

        public Engine()
        {

        }

        public Engine(string model, int power)
        {
            this.model = model;
            this.power = power;
        }

        public string Model
        {
            get { return model; }
            set { model = value; }
        }

        public int Power
        {
            get { return power; }
            set { power = value; }
        }

        public int? Displacement
        {
            get { return displacement; }
            set { displacement = value; }
        }

        public string Efficiency
        {
            get { return efficiency; }
            set { efficiency = value; }
        }
    }

    public class Program
    {
        static void Main(string[] args)
        {
            int numberOfEngines = int.Parse(Console.ReadLine());

            List<Engine> carEngines = new List<Engine>();

            while (numberOfEngines > 0)
            {
                string[] engineInformation = new string[4];
                string[] engineConsoleInput = Console.ReadLine().Split().ToArray();
                Array.Copy(engineConsoleInput, engineInformation, engineConsoleInput.Length);

                Engine engine = new Engine(engineInformation[0], int.Parse(engineInformation[1]));

                if (!string.IsNullOrEmpty(engineInformation[2]))
                {
                    if (int.TryParse(engineInformation[2], out int engineDisplacement))
                    {
                        engine.Displacement = engineDisplacement;
                    }
                    else
                    {
                        engine.Efficiency = engineInformation[2];
                    }
                }

                if (engineInformation[3] != null)
                {
                    engine.Efficiency = engineInformation[3];
                }

                carEngines.Add(engine);

                numberOfEngines--;
            }

            int numberOfCars = int.Parse(Console.ReadLine());

            List<Car> cars = new List<Car>();

            while (numberOfCars > 0)
            {
                string[] carInformation = new string[4];
                string[] carConsoleInput = Console.ReadLine().Split().ToArray();
                Array.Copy(carConsoleInput, carInformation, carConsoleInput.Length);

                string carModel = carInformation[0];
                Engine carEngine = carEngines.Where(ce => ce.Model == carInformation[1]).First();

                Car car = new Car(carModel, carEngine);

                if (!string.IsNullOrEmpty(carInformation[2]))
                {
                    if (int.TryParse(carInformation[2], out int carWeight))
                    {
                        car.Weight = carWeight;
                    }
                    else
                    {
                        car.Color = carInformation[2];
                    }
                }

                if (!string.IsNullOrEmpty(carInformation[3]))
                {
                    car.Color = carInformation[3];
                }

                cars.Add(car);

                numberOfCars--;
            }

            foreach (var carToPrint in cars)
            {
                StringBuilder stringBuilder = new StringBuilder();

                stringBuilder.AppendLine($"{carToPrint.Model}:");
                stringBuilder.AppendLine($"  {carToPrint.Engine.Model}:");
                stringBuilder.AppendLine($"    Power: {carToPrint.Engine.Power}");

                if (carToPrint.Engine.Displacement == null)
                {
                    stringBuilder.AppendLine($"    Displacement: n/a");
                }
                else
                {
                    stringBuilder.AppendLine($"    Displacement: {carToPrint.Engine.Displacement}");
                }

                if (carToPrint.Engine.Efficiency == null)
                {
                    stringBuilder.AppendLine($"    Efficiency: n/a");
                }
                else
                {
                    stringBuilder.AppendLine($"    Efficiency: {carToPrint.Engine.Efficiency}");
                }

                if (carToPrint.Weight == null)
                {
                    stringBuilder.AppendLine($"  Weight: n/a");
                }
                else
                {
                    stringBuilder.AppendLine($"  Weight: {carToPrint.Weight}");
                }

                if (carToPrint.Color == null)
                {
                    stringBuilder.AppendLine($"  Color: n/a");
                }
                else
                {
                    stringBuilder.AppendLine($"  Color: {carToPrint.Color}");
                }

                Console.Write(stringBuilder.ToString());
            }
        }
    }
}
