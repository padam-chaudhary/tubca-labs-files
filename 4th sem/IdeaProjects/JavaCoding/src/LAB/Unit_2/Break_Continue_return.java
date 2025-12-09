package LAB.Unit_2;
import java.util.Scanner;
public class Break_Continue_return {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        //break
        System.out.println("for break statement");
        System.out.println("Enter the max number");
        int num= sc.nextInt();
        for(int i=0;i<=num;i++){
            if(i==num-1){
                break;
            }
            System.out.print(i+" ");
        } System.out.println();

        //continue
        System.out.println("for continue statement");
        System.out.println("Enetr the number ");
        int number=sc.nextInt();
        for(int i=0;i<=number;i++){
            if(i==number-1){
                continue;
            }else{
                System.out.print(i+" ");
            }
        } System.out.println();
        //for return statement
        System.out.println("for return statement:");
        int a= sc.nextInt();
        int b= sc.nextInt();
        System.out.println("a:"+a+"b:"+b);
    int result= calculatesum(a,b);
        System.out.println("total sum :"+result);
    }
    public static int calculatesum(int a,int b) {
        return a + b;
    }
}
