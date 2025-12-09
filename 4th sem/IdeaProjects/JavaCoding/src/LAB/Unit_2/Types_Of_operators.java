package LAB.Unit_2;
import java.util.Scanner;
public class Types_Of_operators {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        //Arithmetic operator
        System.out.println("for arithmetic operator");
        System.out.println("Enter first number");
        double num1=sc.nextDouble();
        System.out.println("Enter Second number");
        double num2= sc.nextDouble();
        System.out.println("Enter your choice");
        String choice= sc.next();
        switch(choice){
            case "+":
                System.out.println("sum : "+num1+num2);
                break;
            case "-" :
                System.out.println("Subtract : "+(num1-num2));
                break;
            case  "*" :
                System.out.println("multiplication : "+num1*num2);
                break;
            case "/" :
                System.out.println("division : "+num1/num2);
                break;
            case "%" :
                System.out.println("Remainder : "+num1%num2);
                break;
            default:
                System.out.println("Invalid operation");
        }
        //Relational operator
        System.out.println("for Relational operator");
        System.out.println("Enter first digit");
        int digit1=sc.nextInt();
        System.out.println("Enter second didgit");
        int digit2=sc.nextInt();
        System.out.println("Enter third digit");
        int digit3= sc.nextInt();
        if(digit1>digit2 && digit1>digit3)
            System.out.println("digit1 greater");
        else if (digit2>digit1 && digit2>digit3)
            System.out.println("digit2 greater");
        else System.out.println("digit3 greater");
        if (digit1==digit2 && digit1==digit3)
            System.out.println("All digits are equal");
        else System.out.println("all digits are not eqaul");
    //logical operator
        System.out.println("for logical operator");
        if(digit1>digit2 && digit1>digit3){
            System.out.println("digit1 is greater");
        }else if(digit2==digit3 || digit2==digit1){
            System.out.println("digit2 is equals to other digits");
        }else if(digit3!=digit1 || digit3!=digit2){
            System.out.println("digit3 is notequals to to other digits");
        }
        //increemnet/decreement operator
        System.out.println("for increement/decreement operator");
        System.out.println("Enter the value of a and b");
        int a= sc.nextInt();
        int b=sc.nextInt();
        System.out.println("pprefix increemented value of a is:"+ ++a);
        System.out.println("pprefix increemented value of b is:"+ ++b);
        System.out.println("postfix increemented value of a is:"+a++);
        System.out.println(" postfix increemented value of b is:"+b++);
        //Conditional operator/ternary operator
        System.out.println(" for conditional operator");
        System.out.println("Enter the value of x and y");
        int x=sc.nextInt();
        int y=sc.nextInt();
        int max=x>y?x:y;
        System.out.println("max value is:"+max);
        //bitwise operator
        System.out.println(" for bitwise operator");
        System.out.println("Enter the two numbers");
        int num_1=sc.nextInt();
        int num_2=sc.nextInt();
        System.out.println("bitwise & is:"+(num_1&num_2));
        System.out.println("bitwise | is:"+(num_1|num_2));
        System.out.println("bitwise ~ is:"+(~num_1));
        System.out.println("bitwise << is:"+(num_1<<num_2));
        System.out.println("bitwise >> is:"+(num_1>>num_2));
        System.out.println("bitwise >>> is:"+(num_1>>>num_2));
        System.out.println("bitwise ^ is:"+(num_1^num_2));
    }
}
