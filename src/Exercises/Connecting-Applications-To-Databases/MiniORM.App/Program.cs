using MiniORM.App.Data;
using MiniORM.App.Data.Entities;
using System;
using System.Linq;

namespace MiniORM.App
{
    public class Program
    {
        static void Main(string[] args)
        {
            var connectionString = @"Server=DESKTOP-H75JB3P;Database=MiniORM;Integrated Security=true;";

            var itCareerDbContext = new ITCareerDbContext(connectionString);

            itCareerDbContext.Employees.Add(new Employee
            {
                FirstName = "Gosho",
                LastName = "Inserted",
                DepartmentId = itCareerDbContext.Departments.First().Id,
                IsEmployed = true
            });

            var lastEmployee = itCareerDbContext.Employees.Last();
            lastEmployee.FirstName = "Modified";

            itCareerDbContext.SaveChanges();
        }
    }
}
