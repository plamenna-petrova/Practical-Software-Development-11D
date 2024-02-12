using MiniORM.App.Data.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace MiniORM.App.Data
{
    public class ITCareerDbContext : DbContext
    {
        public ITCareerDbContext(string connectionString) 
            : base(connectionString)
        {

        }

        public DbSet<Department> Departments { get; }

        public DbSet<Employee> Employees { get; }

        public DbSet<Project> Projects { get; }

        public DbSet<EmployeeProject> EmployeesProjects { get; }
    }
}
