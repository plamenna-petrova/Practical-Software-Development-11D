using System;
using System.Collections.Generic;
using System.Linq;

namespace RawData
{
    // Exercise: Constructors Task #5

    public class Car
    {
        private Model model;

        private int engineSpeed;

        private int enginePower;

        private Cargo cargo;

        private Tire[] tires = new Tire[4];

        /*
           there is no need for explicit declaration of the empty constructor
           it comes as a built-in feature
         */

        public Car()
        {

        }

        /*
            the most basic use case of contructor overloading
         */

        public Car(Model model, int engineSpeed, int enginePower, Cargo cargo, Tire[] tires) : this()
        {
            Model = model;
            EngineSpeed = engineSpeed;
            EnginePower = enginePower;
            Cargo = cargo;
            Tires = tires;
        }

        /*
            a class can also have properties, whose type is another class
         */

        public Model Model
        {
            get { return model; }
            set { model = value; }
        }

        public int EngineSpeed
        {
            get { return engineSpeed; }
            set { engineSpeed = value; }
        }

        public int EnginePower
        {
            get { return enginePower; }
            set { enginePower = value; }
        }

        public Cargo Cargo
        {
            get { return cargo; }
            set { cargo = value; }
        }

        public Tire[] Tires
        {
            get { return tires; }
            set { tires = value; }
        }
    }

    public class Model
    {
        private string name;

        public Model(string name) 
        {
            Name = name;
        }

        public string Name
        {
            get { return name; }
            set { name = value; }
        }
    }

    public class Cargo
    {
        private int load;

        private string type;

        public Cargo(int load, string type)
        {
            Load = load;
            Type = type;
        }

        public int Load
        {
            get { return load; }
            set { load = value; }
        }

        public string Type
        {
            get { return type; }
            set { type = value; }
        }
    }

    public class Tire
    {
        private double pressure;

        private int age;

        public Tire(double pressure, int age)
        {
            Pressure = pressure;
            Age = age;
        }

        public double Pressure
        {
            get { return pressure; }
            set { pressure = value; }
        }

        public int Age
        {
            get { return age; }
            set { age = value; }
        }
    }

    public class Program
    {
        static void Main(string[] args)
        {
            int numberOfCars = int.Parse(Console.ReadLine());

            List<Car> carsList = new List<Car>();

            while (numberOfCars > 0)
            {
                /*
                    note that the 'ToArray' method invocation is not necessary here
                 */

                string[] carDetails = Console.ReadLine().Split().ToArray();

                Model carModel = new Model(carDetails[0]);

                int carEngineSpeed = int.Parse(carDetails[1]);
                int carEnginePower = int.Parse(carDetails[2]);

                Cargo carCargo = new Cargo(int.Parse(carDetails[3]), carDetails[4]);

                /*
                    intialization of an array of objects
                 */

                Tire[] carTires = new Tire[4]
                {
                    new Tire(double.Parse(carDetails[5]), int.Parse(carDetails[6])),
                    new Tire(double.Parse(carDetails[7]), int.Parse(carDetails[8])),
                    new Tire(double.Parse(carDetails[9]), int.Parse(carDetails[10])),
                    new Tire(double.Parse(carDetails[11]), int.Parse(carDetails[12]))
                };

                Car car = new Car(carModel, carEngineSpeed, carEnginePower, carCargo, carTires);

                carsList.Add(car);

                numberOfCars--;
            }

            string cargoTypeCommand = Console.ReadLine();

            /*
                the LINQ methods can be chained
                here the 'ForEach' method is implemented, which represents another handful way
                for iteration over a list of objects - it is specifically created for the List data structure
                the 'Any' method checks whether there are objects, which match a certain condition -
                the result is a boolean
                the 'Select' method extracts certain information from each object
                the 'ToList' method converts the enumerable collection to a List
                the '&&', '||', '>' and other boolean operators are mostly used in the where clause
             */

            switch (cargoTypeCommand)
            {
                case "fragile":
                    carsList
                        .Where(c => c.Cargo.Type == cargoTypeCommand && c.Tires.Any(t => t.Pressure < 1))
                        .Select(c => c.Model.Name)
                        .ToList()
                        .ForEach(cn => { Console.WriteLine(cn); });
                    break;
                case "flamable":
                    carsList
                        .Where(c => c.Cargo.Type == cargoTypeCommand && c.EnginePower > 250)
                        .Select(c => c.Model.Name)
                        .ToList()
                        .ForEach(cn => { Console.WriteLine(cn); });
                    break;
            }
        }
    }
}
