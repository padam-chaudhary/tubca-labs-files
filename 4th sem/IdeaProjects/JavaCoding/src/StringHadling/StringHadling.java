package StringHadling;

public class StringHadling {
//   String name="owl";
//    String name1="Tiger";
//    name.equals(name1);
//   name.length();
//   name.touppercase();
//   name.tolowercase();
//   name.
    public static void main(String[] args){
        StringBuffer str=new StringBuffer("Laughing Dogs🐶🐶");
        StringBuilder str2=new StringBuilder("i am also Laughing With my dog😂😂");
        System.out.println(str.reverse());
        System.out.println(str2.reverse());
        String name= "Hehehehehe😁😁";
        String newname="";
        int len=name.length();
        for(int i=len-1;i>=0;i--){
            newname=newname+name.charAt(i);
        }
        System.out.println(newname);
    }
}
