using System;
using System.Collections.Generic;
using System.Text;

namespace Skeleton
{
    public class Hero
    {
        private string name;

        private int experience;

        private Axe axe;

        public Hero(string name, int experience)
        {
            this.name = name;
            this.experience = experience;
            this.axe = new Axe(10, 10);
        }

        public string Name
        {
            get { return this.name; }
        }

        public int Experience
        {
            get { return this.experience; }
        }

        public Axe Axe
        {
            get { return this.axe; }
        }

        public void Attack(Dummy dummy)
        {
            this.axe.Attack(dummy);

            if (dummy.IsDead())
            {
                this.experience += dummy.GiveExperience();
            }
        }
    }
}
