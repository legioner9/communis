package MultipleTreads.ReentrantLock;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class ReentrantLockClass {
    public static void main(String[] args) throws InterruptedException {
        int i = 0;
        int r;
        do {
            Resource resource = new Resource(10);
            MyThread myThread = new MyThread(resource);
            myThread.setName("one");
            MyThread myThread_2 = new MyThread(resource);

            myThread.start();
            myThread_2.start();
            myThread.join();
            myThread_2.join();
            i++;
            r = resource.index;
            System.out.println(r + " " + i);
            if (r == 11) // if synchronized unreachable
                break;
        } while (true);
        System.out.println("i = " + i);
    }
}

class MyThread extends Thread {
    Resource resource;

    MyThread(Resource r) {
        this.resource = r;
    }

    @Override
    public void run() {
        resource.changeIndex();
    }
}

class Resource {
    int index;

    Lock lock = new ReentrantLock();

    Resource(int i) {
        this.index = i;
    }

    public void changeIndex() { // ! ! synchronized
//?        synchronized (this) { // synchronized block
        lock.lock();
        int i = this.index;
        if (Thread.currentThread().getName().equals("one"))
            Thread.yield();
        i++;
        this.index = i;
//?       } // synchronized block
        lock.unlock();
    }
}

// !once without Lock
//11 258
//i = 258
