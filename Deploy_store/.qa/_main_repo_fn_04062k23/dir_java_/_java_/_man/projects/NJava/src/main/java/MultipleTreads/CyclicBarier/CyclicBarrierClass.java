package MultipleTreads.CyclicBarier;

import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.CyclicBarrier;

public class CyclicBarrierClass {
    public static void main(String[] args) {
        CyclicBarrier cyclicBarrier = new CyclicBarrier(3, new Run());

        new  SportsMen(cyclicBarrier);
        new  SportsMen(cyclicBarrier);
        new  SportsMen(cyclicBarrier);

    }

    static class Run extends Thread {
        @Override
        public void run() {
            System.out.println(getName() + " Run is beginning");
        }
    }

    static class SportsMen extends Thread {
        static CyclicBarrier cyclicBarrier;

        public SportsMen(CyclicBarrier cyclicBarrier) {
            SportsMen.cyclicBarrier = cyclicBarrier;
            start();
        }

        @Override
        public void run() {
            System.out.println(getName() + " at start ");
            try {
                cyclicBarrier.await();
            } catch (InterruptedException | BrokenBarrierException e) {
                throw new RuntimeException(e);
            }
        }
    }


}
// https://www.youtube.com/watch?v=mHkvGWks_YQ&list=PL786bPIlqEjRDXpAKYbzpdTaOYsWyjtCX&index=86
//Thread-2 at start
//Thread-3 at start
//Thread-1 at start
//Thread-0 Run is beginning
