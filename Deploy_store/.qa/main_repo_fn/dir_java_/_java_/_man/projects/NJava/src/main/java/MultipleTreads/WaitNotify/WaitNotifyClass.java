package MultipleTreads.WaitNotify;

public class WaitNotifyClass {
    public static void main(String[] args) throws InterruptedException {
        MyThread myThread = new MyThread();
        myThread.start();
        synchronized (myThread) {
            myThread.wait();
        }
        System.out.println(myThread.current);
    }

    static class MyThread extends Thread {
        int current;

        @Override
        public void run() {
            synchronized (this) {
                for (int i = 0; i < 5; i++) {
                    current += i;
                    try {
                        sleep(500);
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                }
                notify();
            }
        }
    }
}

// 10