using System;
using System.Collections.Generic;
using System.Text;

namespace Skeleton
{
    public class Axe
    {
        private int attackPoints;

        private int durabilityPoints;

        public Axe(int attackPoints, int durabilityPoints)
        {
            this.attackPoints = attackPoints;
            this.durabilityPoints = durabilityPoints;
        }

        public int AttackPoints
        {
            get { return this.attackPoints; }
        }

        public int DurabilityPoints
        {
            get { return this.durabilityPoints; }
        }

        public void Attack(Dummy target)
        {
            if (this.durabilityPoints <= 0)
            {
                throw new InvalidOperationException("Axe is broken.");
            }

            target.TakeAttack(this.attackPoints);
            this.durabilityPoints -= 1;
        }
    }
}
