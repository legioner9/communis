package MultipleTreads.Conditions;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class ConditionClass {
    static Lock lock = new ReentrantLock();
    static Condition condition = lock.newCondition();
    static int index = 0;

    public static void main(String[] args) throws InterruptedException {

        new Plus().start();
        new Plus().start();
        new Minus().start();
        new Minus().start();
        new Plus().start();
        new Minus().start();

        Thread.sleep(300);
        System.out.println("summary: " + index);
    }

    static class Plus extends Thread {
        @Override
        public void run() {
            lock.lock();
            index += 10;
            System.out.println("plus :" + index);
            condition.signal();
            lock.unlock();
        }
    }

    static class Minus extends Thread {
        @Override
        public void run() {
            System.out.println("minus before check<10: " + index);
            if (index < 10) {
                try {
                    lock.lock();
                    System.out.println("minus before await: " + index);
                    condition.await();
                    System.out.println("minus after await: " + index);
                    lock.unlock();
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }
            index -= 10;
            System.out.println("minus :" + index);
        }
    }
}
