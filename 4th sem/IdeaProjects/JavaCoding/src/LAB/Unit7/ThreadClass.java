package LAB.Unit7;
class MyThread extends Thread {
//    @Override
    public void run() {
        for (int i = 0; i < 5; i++) {
            System.out.println(getName() + " - Extending Thread: " + i);
        }
    }
}
class MyRunnable implements Runnable {
//    @Override
    public void run() {
        for (int i = 0; i < 5; i++) {
            System.out.println(Thread.currentThread().getName() + " - Implementing Runnable: " + i);
        }
    }
}

public class ThreadClass {

        public static void main(String[] args) {
            // Creating threads by extending the Thread class
            MyThread thread1 = new MyThread();
//            MyThread thread2 = new MyThread();

            // Creating threads by implementing the Runnable interface
            Thread thread3 = new Thread(new MyRunnable());
//            Thread thread4 = new Thread(new MyRunnable());

            // Starting the threads
            thread1.start();
//            thread2.start();
            thread3.start();
//            thread4.start();
        }
    }


