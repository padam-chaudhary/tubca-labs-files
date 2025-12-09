package Employee;

public class BasicPlusCommisionEmployee extends CommissionEmployee{
  private double BasicSalary;

    @Override
    public double CalculateSalary() {
        return this.BasicSalary+super.CalculateSalary();//getGrossSales*getCommisionRate
                                                         //calls the Commission Employee for calculateSalary
    }

    public double getBasicSalary() {
        return BasicSalary;
    }

    public void setBasicSalary(double basicSalary) {
        this.BasicSalary = basicSalary;
    }
}
