using System;
using System.Collections.Generic;
using System.Linq;

namespace AggregateSalaryOfEmployee

{
    class Employee
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Department { get; set; }
        public decimal Salary { get; set; }

        public override string ToString()
        {
            return $"ID: {Id}, Name: {Name}, Department: {Department}, Salary: ${Salary}";
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            List<Employee> employees = new List<Employee>();

            Console.WriteLine("Enter details for 5 employees:");

            // Take input for 5 employees
            for (int i = 0; i < 5; i++)
            {
                Console.WriteLine($"\nEmployee {i + 1}:");

                Employee emp = new Employee();

                Console.Write("Enter ID: ");
                emp.Id = ValidateIntInput();

                Console.Write("Enter Name: ");
                emp.Name = Console.ReadLine();

                Console.Write("Enter Department: ");
                emp.Department = Console.ReadLine();

                Console.Write("Enter Salary: ");
                emp.Salary = ValidateDecimalInput();

                employees.Add(emp);
            }

            // Display all employees
            Console.WriteLine("\nEmployee Records:");
            foreach (var employee in employees)
            {
                Console.WriteLine(employee);
            }
            Console.WriteLine();

            // Compute aggregate salary using LINQ
            decimal totalSalary = employees.Sum(e => e.Salary);
            decimal averageSalary = employees.Average(e => e.Salary);
            decimal maxSalary = employees.Max(e => e.Salary);
            decimal minSalary = employees.Min(e => e.Salary);

            // Display salary aggregates
            Console.WriteLine("Salary Aggregates:");
            Console.WriteLine($"Total Salary: ${totalSalary}");
            Console.WriteLine($"Average Salary: ${averageSalary:F2}");
            Console.WriteLine($"Maximum Salary: ${maxSalary}");
            Console.WriteLine($"Minimum Salary: ${minSalary}");
            Console.WriteLine();

            // Sort employees by salary in descending order using LINQ
            var sortedEmployees = employees.OrderByDescending(e => e.Salary).ToList();

            // Display sorted employees
            Console.WriteLine("Employees Sorted by Salary (Descending):");
            foreach (var employee in sortedEmployees)
            {
                Console.WriteLine(employee);
            }

            Console.WriteLine("\nPress any key to exit...");
            Console.ReadKey();
        }

        // Helper method to validate integer input
        static int ValidateIntInput()
        {
            int value;
            while (!int.TryParse(Console.ReadLine(), out value) || value <= 0)
            {
                Console.Write("Invalid input. Please enter a positive number: ");
            }
            return value;
        }

        // Helper method to validate decimal input
        static decimal ValidateDecimalInput()
        {
            decimal value;
            while (!decimal.TryParse(Console.ReadLine(), out value) || value < 0)
            {
                Console.Write("Invalid input. Please enter a valid salary: ");
            }
            return value;
        }
    }
}