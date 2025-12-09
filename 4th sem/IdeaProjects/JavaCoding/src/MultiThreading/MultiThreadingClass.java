package MultiThreading;
import java.lang.Override;
import java.util.Scanner;
class MultiThreadingClass  extends Thread{
    public void run(){
        try{

            //Display the thread that is running
            System.out.println("Thread"+Thread.currentThread().getId()+" is running");
        }
        catch(Exception e){
            //throwing an exception
            System.out.println("Exception is caught");
        }
    }
}
class Multithread{
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
//        int n=8;//number of threads
        System.out.println("Enetr the number ");
        int n= sc.nextInt();
        int sum=0;
        for(int i=1;i<n;i++){
            Thread object = new Thread(new MultiThreadingClass());
            object.start();
           sum=sum+i;
        }
        System.out.println(sum);
    }
}
