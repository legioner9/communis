package MultipleTreads.Atomic;

public class WithoutAtomicClass {

    static int index;

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
            System.out.println(++index);
// !        ++index is not atomic operation
//            k = i + 1;
//            i = k;

        }
    }
}
//! once
//99995
