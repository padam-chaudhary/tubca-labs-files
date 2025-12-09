package Employee;

public abstract class Employee {
    private String FullName;
    private int EmployeeId;
    public abstract double CalculateSalary();
    public String getFullName() {
        return FullName;
    }

    public void setFullName(String fullName) {
        this.FullName = fullName;
    }
    public int getEmpId() {
        return EmployeeId;
    }

    public void setEmpId(int empId) {
        this.EmployeeId = empId;
    }
}
