

 class Constructor {
    int a; String name;
   Constructor(){
     a=9; name="Padam";
    }
     void show(){
         System.out.println(a+" "+name);
     }
}
class B{
     public static void main(String[] args){
//         String hrs="dfndf"+"fjjwf"+"mkfhgfhgf"
//                 +"nfjherjhg";
         Constructor ref = new Constructor();
         ref.show();
     }
}
