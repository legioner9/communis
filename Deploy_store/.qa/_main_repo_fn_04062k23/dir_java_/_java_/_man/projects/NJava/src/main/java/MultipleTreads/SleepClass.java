package MultipleTreads;

public class SleepClass {
    public static void main(String[] args) throws InterruptedException {
        MyThread_2 myThread_2 = new MyThread_2();
        myThread_2.start();
        System.out.println("Thread.currentThread().getName(): " + Thread.currentThread().getName());
        Thread.sleep(200); //? sleep main thread
        System.out.println("main");
    }
}

class MyThread_2 extends Thread {
    @Override
    public void run() {
        try {
            System.out.println("Thread.currentThread().getName(): " + Thread.currentThread().getName());
            Thread.sleep(100); //? sleep child thread
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        System.out.println("thread");
    }
}

//Thread.currentThread().getName(): Thread-0
//Thread.currentThread().getName(): main
//thread
//main