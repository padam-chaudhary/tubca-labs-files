public class SampleCode {
    public static void main(String[] args) {
       if(args.length !=3){
           System.out.println("simple interest <p> <t> <r>");
           return;
       }
       try {
           double p = Double.parseDouble(args[0]);
           double t = Double.parseDouble(args[1]);
           double r = Double.parseDouble(args[2]);
           double si = (p*t*r)/100;
           System.out.println("si : "+ si);
       }catch(Exception e){
           System.out.println(e);
       }
    }



}
