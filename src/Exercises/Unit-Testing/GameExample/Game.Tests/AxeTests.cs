using NUnit.Framework;
using Skeleton;
using System;

namespace Game.Tests
{
    [TestFixture]
    public class AxeTests
    {
        [Test]
        public void Test_AxeLosesDurabiliyAfterAttack()
        {
            Axe axe = new Axe(10, 10);
            Dummy dummy = new Dummy(10, 10);

            axe.Attack(dummy);

            Assert.AreEqual(9, axe.DurabilityPoints, "Axe Durabiliy doesn't change after attack!");
        }

        [Test]
        public void Test_BrokenAxeCantAttack()
        {
            Axe axe = new Axe(2, 2);
            Dummy dummy = new Dummy(20, 20);

            axe.Attack(dummy);
            axe.Attack(dummy);

            var invalidOperationException = Assert.Throws<InvalidOperationException>(() => axe.Attack(dummy));
            Assert.That(invalidOperationException.Message, Is.EqualTo("Axe is broken."));
        }
    }
}