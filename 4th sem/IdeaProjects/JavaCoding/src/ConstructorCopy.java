class Cpyconstructor{
    int a; String s;
    Cpyconstructor(){
        a=9; s="Programming with Padam";
        System.out.println(a+" "+s);
    }
    Cpyconstructor(Cpyconstructor ref){
        a=ref.a;
        s=ref.s;
        System.out.println(a+" "+s);
    }
}
 class ConstructorCopy {
    public static void main(String[] args){
     Cpyconstructor ref=new Cpyconstructor();
     Cpyconstructor ref2=new Cpyconstructor(ref);
    }
}
