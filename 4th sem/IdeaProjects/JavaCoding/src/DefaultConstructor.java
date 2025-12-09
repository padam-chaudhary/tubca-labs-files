class Constructrs{
    int number;String subject; boolean bolean;
    Constructrs(){//Default constructor
        number=2; subject="oop in java"; bolean=true;
    }
    void display(){

        System.out.println(number+" "+subject+" "+bolean);
    }
}
 public class DefaultConstructor{
public static void main(String[] args){
    Constructrs print=new Constructrs();
    print.display();
}
}
