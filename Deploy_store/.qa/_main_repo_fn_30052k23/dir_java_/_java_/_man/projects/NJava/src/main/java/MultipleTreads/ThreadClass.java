package MultipleTreads;

public class ThreadClass {
    public static void main(String[] args) {
        Thread thread = new MyThread();
        System.out.println("Thread.currentThread().getName(): " + Thread.currentThread().getName());
        thread.start();

    }
}

class MyThread extends Thread{

    @Override
    public void run() {
        super.run();
        System.out.println("Thread.currentThread().getName(): " + Thread.currentThread().getName());
//        method();
    }

    private static void method() {
        throw new RuntimeException();
    }

}
