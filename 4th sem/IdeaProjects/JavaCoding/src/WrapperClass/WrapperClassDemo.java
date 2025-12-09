package WrapperClass;

public class WrapperClassDemo {
    public static void main(String[] args) {
        Integer integer= Integer.valueOf(6);//boxing
        int Int= integer.intValue();//unboxing
        Double marks= Double.valueOf(90.5);
        double floating= marks.doubleValue();//unboxing
        Long l= Long.valueOf(5);
        long ll= l.longValue();
        String str= "Hello";
        Integer byt= Integer.parseInt(str);
        byte bt= byt.byteValue();
        System.out.println(Int);
        System.out.println(floating);
        System.out.println(ll);
        System.out.println(bt);
    }
}
