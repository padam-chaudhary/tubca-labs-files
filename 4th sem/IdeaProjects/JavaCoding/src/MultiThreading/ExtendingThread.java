package MultiThreading;
import java.lang.Override;
class Threading extends Thread{
//    @Override
    public void run(){
        for(int i=1;i<=5;i++){
            System.out.println(i);

        }
    }
}
public class ExtendingThread {
    public static void main(String[] args){
        Threading threads=new Threading();
        threads.start();
        for(int i=1;i<=5;i++){
            System.out.println("dogs");

        }
    }
}
