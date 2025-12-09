package Employee;

public class SalaryEmployee extends Employee{
    private double MonthlySalary;

    @Override
    public double CalculateSalary() {
        return this.MonthlySalary;
    }

    public double getMonthlySalary() {
        return MonthlySalary;
    }

    public void setMonthlySalary(double monthlySalary) {
        this.MonthlySalary = monthlySalary;
    }
}
