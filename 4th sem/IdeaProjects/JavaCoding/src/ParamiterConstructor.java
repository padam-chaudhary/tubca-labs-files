class Constructors{
    int x,y;
    Constructors(int a,int b){//paramiterrized Constructor
        x=a; y=b;                //only primitive datatypes used
    }
    Constructors(int a,double b){//b should be different datatype variable
       System.out.println(a+" "+b);
    }
    Constructors(String s ,double b){//b should be different datatype variable
       System.out.println("message is :"+s+" and "+b);
    }
    void display(){
        System.out.println(x+" "+y);
    }
}
class ParamiterConstructor {
    public static void main(String[] args){
        Constructors value=new Constructors(3,7);
        Constructors ref=new Constructors(9,3.16);
        Constructors string=new Constructors("Hello java",7.90);
        value.display();
    }

}
