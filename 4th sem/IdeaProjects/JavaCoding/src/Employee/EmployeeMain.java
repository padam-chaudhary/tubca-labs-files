package Employee;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
public class EmployeeMain {

List <Employee> employees=new ArrayList<>();
public static  void main(String[] args){
    Scanner sc = new Scanner(System.in);
    int command=0;
    System.out.println("--------------------------");
    System.out.println("Welcome to Employee Salary manager");
    System.out.print("Commands:\n1.To view all employees with type.\n2.To add New Employee.\n3.Remove employee.\n4.Calculate.\n0.close");
    command= sc.nextInt();
    switch (command){
        case 1:
    }
}
}
