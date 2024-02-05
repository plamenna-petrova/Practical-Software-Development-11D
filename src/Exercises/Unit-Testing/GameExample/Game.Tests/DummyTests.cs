using NUnit.Framework;
using Skeleton;
using System;
using System.Collections.Generic;
using System.Text;

namespace Game.Tests
{
    [TestFixture]
    public class DummyTests
    {
        [Test]
        public void Test_DummyLosesHealthIfAttacked()
        {
            Hero hero = new Hero("Eivor", 0);
            Dummy dummy = new Dummy(20, 20);

            hero.Attack(dummy);

            Assert.That(dummy.Health, Is.EqualTo(10), "Dummy doesn't lose health after attack");
        }

        [Test]
        public void Test_DeadDummyThrowsExceptionIfAttacked()
        {
            Hero hero = new Hero("Eivor", 0);
            Dummy dummy = new Dummy(10, 10);

            hero.Attack(dummy);

            var invalidOperationException = Assert.Throws<InvalidOperationException>(() => hero.Attack(dummy));

            Assert.That(invalidOperationException.Message, Is.EqualTo("Dummy is dead."));
        }

        [Test]
        public void Test_DeadDummyCanGiveExperience()
        {
            Hero hero = new Hero("Eivor", 0);
            Dummy dummy = new Dummy(10, 10);

            hero.Attack(dummy);

            Assert.Multiple(() =>
            {
                Assert.That(dummy.IsDead(), Is.EqualTo(true));
                Assert.That(hero.Experience, Is.GreaterThan(0));
            });
        }

        [Test]
        public void Test_AliveDummyCannotGiveExperience()
        {
            Hero hero = new Hero("Eivor", 0);
            Dummy dummy = new Dummy(15, 10);

            hero.Attack(dummy);

            Assert.Multiple(() =>
            {
                Assert.That(dummy.IsDead(), Is.EqualTo(false));
                Assert.That(hero.Experience, Is.EqualTo(0));
            });
        }
    }
}
