package MultipleTreads;

public class RunnableClass {

    public static void main(String[] args) {
        Runnable runnable = new MyRunnable();
        Thread t = new Thread(runnable);
        t.start();
        Runnable runnable2 = new MyRunnable();
        Thread t1 = new Thread(runnable2);
        t1.start();
        Runnable runnable3 = new MyRunnable();
        Thread t3 = new Thread(runnable);
        t3.start();
//        t1.start();

    }

}

class MyRunnable implements Runnable {

    @Override
    public void run() {
        for (int i = 0; i < 40; i++) {
            System.out.println("Thread.currentThread().getName(): " + Thread.currentThread().getName() + " i " + i);
        }

    }

}

