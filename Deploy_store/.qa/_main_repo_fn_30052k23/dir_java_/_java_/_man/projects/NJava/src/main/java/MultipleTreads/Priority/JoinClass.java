package MultipleTreads.Priority;

public class JoinClass {
    public static void main(String[] args) throws InterruptedException {
        MyThread_4 myThread_4 = new MyThread_4();
        myThread_4.start();
        System.out.println("Thread.currentThread().getName(): " + Thread.currentThread().getName());
        myThread_4.join(); // waiting that thread
        System.out.println("main");
    }
}

class MyThread_4 extends Thread {
    @Override
    public void run() {
//        MyThread_4 myThread_4_1 = new MyThread_4();
        System.out.println("Thread.currentThread().getName(): " + Thread.currentThread().getName());
        System.out.println("thread");
    }
}

// ! always
//Thread.currentThread().getName(): Thread-0
//thread
//Thread.currentThread().getName(): main
//main