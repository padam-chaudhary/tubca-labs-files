package LAB.Unit_2;
import java.util.Scanner;
public class OddEven {
    public static void main(String[] args) {
      Scanner sc = new Scanner(System.in);
        int maxnum,i,mininum;
        System.out.print("Enter a  maximum range number :");
        maxnum = sc.nextInt();
        System.out.print("Enter a minimum range number: ");
        mininum= sc.nextInt();
        System.out.print("The even numbers are:");
        for(i=mininum;i<=maxnum;i++){
        if(i%2 == 0){
            System.out.print("\t"+i);
        }
        }
        System.out.println();
        System.out.print("The odd numbers are:");
        for(i=mininum;i<=maxnum;i++){
            if(i%2 !=0){
                System.out.print("\t"+i);
            }
        }
    }

}
