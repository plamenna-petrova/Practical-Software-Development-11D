using InheritanceAndPolymorphismGood;
using System;
using System.Collections.Generic;
using System.Text;

namespace InheritanceAndPolymorphism
{
    public class LocalCourse : Course
    {
        public LocalCourse(string name) 
            : base(name)
        {

        }

        public LocalCourse(string courseName, string teacherName) 
            : base(courseName, teacherName)
        {
            
        }

        public LocalCourse(string courseName, string teacherName, IList<string> students) 
            : base(courseName, teacherName)
        {
            
        }
    }
}

