package Employee;

public class HourlyEmployee extends Employee{
    private double HourlyWage;
    private int Totalhours;
    @Override
    public double CalculateSalary() {
        if(this.Totalhours>100){
            return this.HourlyWage*100+(this.Totalhours-100)*this.HourlyWage;
        }
        return this.HourlyWage*this.Totalhours;
    }
    public double getHourlyWage() {
        return HourlyWage;
    }

    public void setHourlyWage(double hourlyWage) {
        this.HourlyWage = hourlyWage;
    }
    public int getTotalhours() {
        return Totalhours;
    }

    public void setTotalhours(int totalhours) {
        this.Totalhours = totalhours;
    }


}
