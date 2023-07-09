package MultipleTreads.Volatile;

public class VolatileClass {
    volatile static int index;

    public static void main(String[] args) {
        new MyThreadRead().start();
        new MyThreadWrite().start();

    }

    static class MyThreadWrite extends Thread {
        @Override
        public void run() {
            while (index < 5)
                System.out.println("++index: " + (++index)); // ? non atomically ???
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }

    static class MyThreadRead extends Thread {
        @Override
        public void run() {
            int localIndex = index;
            while (localIndex < 5) {
                if (localIndex != index) { //! if index not volatile : in MyThreadRead index = 0 always
                    System.out.println("new index: " + index);
                    localIndex = index;
                }
            }

        }
    }
}

// not stable result
// https://www.youtube.com/watch?v=dgIn2aPggu0
