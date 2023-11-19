using NUnit.Framework;
using Skeleton.Models;
using Skeleton.Views;
using System;
using System.Text;

namespace Journey.Tests
{
    [TestFixture]
    public class Tests
    {
        [Test]
        public void Test_TravellingBudget50AndTravellingSeasonSummer_ReturnsBulgariaAsDestinationAndCampAsRestingPlace()
        {
            Display display = new Display();
            JourneyInfo journey = new JourneyInfo(50, "summer");
            display.JourneyDetails = journey.GetJourneyDetails();

            StringBuilder journeyStringBuilder = new StringBuilder()
                .AppendLine($"Somewhere in Bulgaria")
                .AppendLine($"Camp - 15.00");

            Assert.That(display.JourneyDetails, Is.EqualTo(journeyStringBuilder.ToString()));
        }

        [Test]
        public void Test_TravellingBudget75AndTravellingSeasonWinter_ReturnsBulgariaAsDestinationAndHotelAsRestingPlace()
        {
            Display display = new Display();
            JourneyInfo journey = new JourneyInfo(75, "winter");
            display.JourneyDetails = journey.GetJourneyDetails();

            StringBuilder journeyStringBuilder = new StringBuilder()
                .AppendLine($"Somewhere in Bulgaria")
                .AppendLine($"Hotel - 52.50");

            Assert.That(display.JourneyDetails, Is.EqualTo(journeyStringBuilder.ToString()));
        }

        [Test]
        public void Test_TravellingBudget312AndTravellingSeasonSummer_ReturnsBalkansAsDestinationAndCampAsRestingPlace()
        {
            Display display = new Display();
            JourneyInfo journey = new JourneyInfo(312, "summer");
            display.JourneyDetails = journey.GetJourneyDetails();

            StringBuilder journeyStringBuilder = new StringBuilder()
                .AppendLine($"Somewhere in Balkans")
                .AppendLine($"Camp - 124.80");

            Assert.That(display.JourneyDetails, Is.EqualTo(journeyStringBuilder.ToString()));
        }

        [Test]
        public void Test_TravellingBudget678AndTravellingSeasonWinter_ReturnsBalkansAsDestinationAndHotelAsRestingPlace()
        {
            Display display = new Display();
            JourneyInfo journey = new JourneyInfo(678.53, "winter");
            display.JourneyDetails = journey.GetJourneyDetails();

            StringBuilder journeyStringBuilder = new StringBuilder()
                .AppendLine($"Somewhere in Balkans")
                .AppendLine($"Hotel - 542.82");

            Assert.That(display.JourneyDetails, Is.EqualTo(journeyStringBuilder.ToString()));
        }

        [Test]
        public void Test_TravellingBudget1500AndTravellingSeasonSummer_ReturnsEuropeAsDestinationAndHotelAsRestingPlace()
        {
            Display display = new Display();
            JourneyInfo journey = new JourneyInfo(1500, "summer");
            display.JourneyDetails = journey.GetJourneyDetails();

            StringBuilder journeyStringBuilder = new StringBuilder()
                .AppendLine($"Somewhere in Europe")
                .AppendLine($"Hotel - 1350.00");

            Assert.That(display.JourneyDetails, Is.EqualTo(journeyStringBuilder.ToString()));
        }

        [Test]
        public void Test_TravellingBudget5AndTravellingSeasonSummer_ReturnsArgumentException()
        {
            Display display = new Display();

            var argumentException = Assert.Throws<ArgumentException>(() => new JourneyInfo(5, "summer"));

            Assert.That(argumentException.Message, Is.EqualTo("Invalid travelling budget!"));
        }

        [Test]
        public void Test_TravellingBudget7000AndTravellingSeasonWinter_ReturnsArgumentException()
        {
            Display display = new Display();

            var argumentException = Assert.Throws<ArgumentException>(() => new JourneyInfo(7000, "winter"));

            Assert.That(argumentException.Message, Is.EqualTo("Invalid travelling budget!"));
        }

        [Test]
        public void Test_TravellingBudget50AndTravellingSeasonAutumn_ReturnsArgumentException()
        {
            Display display = new Display();

            var argumentException = Assert.Throws<ArgumentException>(() => new JourneyInfo(50, "autumn"));

            Assert.That(argumentException.Message, Is.EqualTo("Invalid travelling season!"));
        }
    }
}