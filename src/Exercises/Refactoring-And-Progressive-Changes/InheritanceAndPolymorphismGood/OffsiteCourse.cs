using InheritanceAndPolymorphismGood;
using System;
using System.Collections.Generic;
using System.Text;

namespace InheritanceAndPolymorphism
{
    public class OffsiteCourse : Course
    {
        public OffsiteCourse(string name)
            : base(name)
        {

        }

        public OffsiteCourse(string courseName, string teacherName)
            : base(courseName, teacherName)
        {

        }

        public OffsiteCourse(string courseName, string teacherName, IList<string> students)
            : base(courseName, teacherName)
        {

        }
    }
}
