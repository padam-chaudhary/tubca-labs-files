package LAB.Unit_3;
import java.util.*;
  class ParamiterizedConstructor{
      int   num1,num2,sum;
    void ParamiterizedConstructor(int num1,int num2){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the first number");
        num1= sc.nextInt();
        System.out.println("Enter the second number");
        num2 = sc.nextInt();

    }
    void display(){
sum=num1+num2;
        System.out.println("total sum is :"+sum);
    }
}
public class Constructor {
    public static void main(String[] args) {
        ParamiterizedConstructor paramiter= new ParamiterizedConstructor();
//        Paramiter.display();

    }
}
