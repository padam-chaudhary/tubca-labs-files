package LAB.Unit7;
class MyPriorityThread extends Thread {
    public MyPriorityThread(String name) {
        super(name);
    }

//    @Override
    public void run() {
        for (int i = 0; i < 5; i++) {
            System.out.println(getName() + " with priority " + getPriority() + " - running: " + i);
        }
    }
}

public class ThreadPriority{
    public static void main(String[] args) {
        // Creating threads with different priorities
        MyPriorityThread thread1 = new MyPriorityThread("Thread-1");
        MyPriorityThread thread2 = new MyPriorityThread("Thread-2");
//        MyPriorityThread thread3 = new MyPriorityThread("Thread-3");

        // Setting thread priorities
        thread1.setPriority(Thread.MIN_PRIORITY); // Minimum priority (1)
        thread2.setPriority(Thread.MAX_PRIORITY); // Normal priority (5)
//        thread3.setPriority(Thread.MAX_PRIORITY); // Maximum priority (10)

        // Starting the threads
        thread1.start();
        thread2.start();
//        thread3.start();
    }
}


