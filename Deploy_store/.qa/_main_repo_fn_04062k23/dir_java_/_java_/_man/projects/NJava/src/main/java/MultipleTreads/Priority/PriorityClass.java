package MultipleTreads.Priority;

public class PriorityClass {
    public static void main(String[] args) throws InterruptedException {
        MyThread_3 myThread_3 = new MyThread_3();
        myThread_3.start();
        System.out.println("Thread.currentThread().getName(): " + Thread.currentThread().getName());
//        Thread.yield();
        myThread_3.setPriority(Thread.MIN_PRIORITY);
        System.out.println("main");
    }
}

class MyThread_3 extends Thread {
    @Override
    public void run() {
        MyThread_3 myThread_3_1 = new MyThread_3();
        myThread_3_1.setPriority(Thread.MAX_PRIORITY);
        System.out.println("Thread.currentThread().getName(): " + Thread.currentThread().getName());
        System.out.println("thread");
    }
}

//Thread.currentThread().getName(): Thread-0
//thread
//Thread.currentThread().getName(): main
//main