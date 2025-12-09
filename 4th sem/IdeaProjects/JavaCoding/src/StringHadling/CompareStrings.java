package StringHadling;

public class CompareStrings {
    public static void main(String[] args){
        String str="sushant";
        String str2="PADAM";
        String strng=new String("sushant");
        System.out.println(str.toUpperCase());
        System.out.println(str2.toLowerCase());
        System.out.println(str.equals(str2));
        System.out.println(str.equals(strng));
        System.out.println(str.length());
        String value="hello monitized wolrd";
        String myname="sacnds";
        String string="    sun Myname   ";
        System.out.println(value.indexOf('m'));
        System.out.println(myname.isEmpty());
        System.out.println(string.replace('s','S'));
        System.out.println(str.concat(str2));
        System.out.println(string.trim());
        String s="Hello World";
        //ToString();
        //SubString();
        //Endswith();
        //Contents();
//        System.out.println(SubString(0,5));
        
    }
}
