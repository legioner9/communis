package MultipleTreads.TryLock;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class TryLockClass {
    static Lock lock = new ReentrantLock();

    public static void main(String[] args) {
        new Thread1().start();
        new Thread2().start();

    }

    static class Thread1 extends Thread {
        @Override
        public void run() {
            lock.lock();
            System.out.println(getName() + " is working");

            try {
                Thread.sleep(10);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }

            System.out.println(getName() + " is done");
            lock.unlock();
            System.out.println(getName() + " is released");
        }
    }

    static class Thread2 extends Thread {
        @Override
        public void run() {
            System.out.println(getName() + " is working");
            while (true) {
                if (lock.tryLock()) {
                    System.out.println("lock.tryLock(): " + getName() + " already in locked");
                    break;
                } else {
                    System.out.println("lock.tryLock(): " + getName() + " waiting for lock");
                }
            }
            System.out.println(getName() + " is done");
        }
    }
}

//Thread-1 is working
//Thread-0 is working
//lock.tryLock(): Thread-1 waiting for lock
//lock.tryLock(): Thread-1 waiting for lock
//lock.tryLock(): Thread-1 waiting for lock
//lock.tryLock(): Thread-1 waiting for lock
//Thread-0 is done
//lock.tryLock(): Thread-1 waiting for lock
//Thread-0 is released
//lock.tryLock(): Thread-1 already in locked
//Thread-1 is done
