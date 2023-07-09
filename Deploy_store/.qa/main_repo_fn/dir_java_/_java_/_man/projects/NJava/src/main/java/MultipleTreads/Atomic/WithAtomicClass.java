package MultipleTreads.Atomic;

import java.util.concurrent.atomic.AtomicInteger;

public class WithAtomicClass {

    static AtomicInteger index = new AtomicInteger(0);

    public static void main(String[] args) throws Exception {
        for (int i = 0; i < 100_000; i++) {
            new MyThread().start();
        }
        Thread.sleep(2000);
        System.out.println(index);
    }

    private static class MyThread extends Thread {
        @Override
        public void run() {
            System.out.println(index.incrementAndGet());

        }
    }
}

//! only
//100000
