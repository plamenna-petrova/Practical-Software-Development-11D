using System;
using System.Collections.Generic;
using System.Linq;

namespace CarTrips
{
    // Entrance Exam Preparation Task #9

    public class Car
    {
        private string model;

        private double fuelQuantity;

        private double oneKMFuelExpenses;

        private int travelledDistance;

        public Car()
        {

        }

        public Car(string model, double fuelQuantity, double oneKMFuelExpenses) : this()
        {
            this.Model = model;
            this.FuelQuantity = fuelQuantity;
            this.OneKMFuelExpenses = oneKMFuelExpenses;
            this.TravelledDistance = 0;
        }

        public string Model
        {
            get { return model; }
            set { model = value; }
        }

        public double FuelQuantity
        {
            get { return fuelQuantity; }
            set { fuelQuantity = value; }
        }

        public double OneKMFuelExpenses
        {
            get { return oneKMFuelExpenses; }
            set { oneKMFuelExpenses = value; }
        }

        public int TravelledDistance
        {
            get { return travelledDistance; }
            set { travelledDistance = value; }
        }

        public void CalculateFuelExpensesForDistance(int distanceToTravel)
        {
            double calculatedFuelExpensesForDistance = OneKMFuelExpenses * distanceToTravel;

            if (FuelQuantity - calculatedFuelExpensesForDistance >= 0)
            {
                FuelQuantity -= calculatedFuelExpensesForDistance;
                TravelledDistance += distanceToTravel;
            }
            else
            {
                Console.WriteLine("Insufficient fuel for the drive");
            }
        }

        public override string ToString()
        {
            return $"{Model} {FuelQuantity:F2} {TravelledDistance}";
        }
    }

    public class Program
    {
        static void Main(string[] args)
        {
            int numberOfCars = int.Parse(Console.ReadLine());

            List<Car> travellingCars = new List<Car>();

            bool isCarCommandsSendingActive = true;

            while (isCarCommandsSendingActive)
            {
                string[] travellingCarInfo = Console.ReadLine().Split().ToArray();

                if (numberOfCars > 0)
                {
                    Car car = new Car(travellingCarInfo[0], int.Parse(travellingCarInfo[1]), double.Parse(travellingCarInfo[2]));
                    travellingCars.Add(car);
                    numberOfCars--;
                }
                else
                {
                    switch (travellingCarInfo[0])
                    {
                        case "Drive":
                            string carModel = travellingCarInfo[1];
                            Car travellingCar = travellingCars.Where(c => c.Model == carModel).FirstOrDefault();

                            if (travellingCar != null)
                            {
                                int distanceToTravel = int.Parse(travellingCarInfo[2]);
                                travellingCar.CalculateFuelExpensesForDistance(distanceToTravel);
                            }
                            break;
                        case "End":
                            travellingCars.ForEach((car) => Console.WriteLine(car.ToString()));
                            isCarCommandsSendingActive = false;
                            break;
                    }
                }
            }
        }
    }
}
