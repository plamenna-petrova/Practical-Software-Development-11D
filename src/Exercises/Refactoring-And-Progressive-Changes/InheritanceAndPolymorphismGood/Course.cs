using System;
using System.Collections.Generic;
using System.Text;

namespace InheritanceAndPolymorphismGood
{
    public class Course
    {
        public Course(string name)
        {
            Name = name;
            TeacherName = null;
            Students = new List<string>();
            Lab = null;
        }

        public Course(string courseName, string teacherName)
        {
            Name = courseName;
            TeacherName = teacherName;
            Students = new List<string>();
            Lab = null;
        }

        public Course(string courseName, string teacherName, IList<string> students)
        {
            Name = courseName;
            TeacherName = teacherName;
            Students = students;
            Lab = null;
        }

        public string Name { get; set; }

        public string TeacherName { get; set; }

        public IList<string> Students { get; set; }

        public string Lab { get; set; }

        private string GetStudentsAsString()
        {
            if (Students == null || Students.Count == 0)
            {
                return "{ }";
            }
            else
            {
                return "{ " + string.Join(", ", Students) + " }";
            }
        }

        public override string ToString()
        {
            StringBuilder result = new StringBuilder();

            result.Append(GetType().Name + " { Name = ");
            result.Append(Name);

            if (TeacherName != null)
            {
                result.Append("; Teacher = ");
                result.Append(TeacherName);
            }

            result.Append("; Students = ");
            result.Append(GetStudentsAsString());

            if (Lab != null)
            {
                result.Append("; Lab = ");
                result.Append(Lab);
            }

            result.Append(" }");

            return result.ToString();
        }
    }
}
