using Division.Example;
using NUnit.Framework;
using System;

namespace Division.Tests
{
    [TestFixture]
    public class TestDivision
    {
        [Test]
        public void Dividing4By2Equals2()
        {
            Divider divider = new Divider();
            var divisionResult = divider.Divide(4, 2);

            Assert.AreEqual(2, divisionResult, "Dividing 4 by 2 does not result in 2");

            //Assert.That(divisionResult, Is.EqualTo(2), "Dividing 4 by 2 does not result in 2");
        }

        [Test]
        public void DividingBy4By0()
        {
            Divider divider = new Divider();

            var divisionResult = Assert.Throws<InvalidOperationException>(() => divider.Divide(4, 0));

            Assert.That(divisionResult.Message, Is.EqualTo("Cannot divide by zero"));
        }
    }
}