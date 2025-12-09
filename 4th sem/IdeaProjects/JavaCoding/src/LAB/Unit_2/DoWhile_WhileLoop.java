package LAB.Unit_2;
import java.util.Scanner;
public class DoWhile_WhileLoop {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        //do while
        System.out.println("for do while loop");
        System.out.println("Enter minimum number");
        int mini = sc.nextInt();
        System.out.println("Enter the maximum number ");
        int max=sc.nextInt();
        do {
            System.out.print(mini+"\t");
            mini++;
        }while(mini<=max);
        //while loop
        System.out.println("\nfor while loop");
        System.out.println("enter mini number");
        int minimum= sc.nextInt();
        System.out.println("Enter max number");
        int MAximum=sc.nextInt();
        while(minimum<=MAximum){
            System.out.print(minimum+"\t");
            minimum++;
        }
    }
}
