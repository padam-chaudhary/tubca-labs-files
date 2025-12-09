package LAB.Unit_2;
import java.util.Scanner;
public class forLoop_AdvanceLoop {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        //for loop
        System.out.println("Enter the number");
        int number = sc.nextInt();
        int i, j;
        for (i = 1; i <= number; i++) {
            for (j = 1; j <= i; j++) {
                System.out.print(j);

            }
            System.out.println();
        }
        //advance loop
        System.out.println("for advance for loop");
        int num[] = new int[4];
        System.out.println("enter the elements of array");
        for(i=0;i<4;i++){
            num[i]=sc.nextInt();
        }
        System.out.print("Elements of array are:");
        for (int nums : num) {
            System.out.print(nums+" ");
        }
    }
}
