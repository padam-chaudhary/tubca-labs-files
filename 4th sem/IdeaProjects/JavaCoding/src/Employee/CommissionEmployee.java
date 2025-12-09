package Employee;

public class CommissionEmployee extends Employee{
    private double CommissionRate;
    private double GrossSales;
public double CalculateSalary(){
    return this.CommissionRate*this.GrossSales;
}
    public double getCommissionRate() {
        return CommissionRate;
    }

    public void setCommissionRate(double commissionRate) {
        this.CommissionRate = commissionRate;
    }

    public double getGrossSales() {
        return GrossSales;
    }

    public void setGrossSales(double grossSales) {
        this.GrossSales = grossSales;
    }
}
