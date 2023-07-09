package MultipleTreads.Synchronize.StaticSyncClass;

public class StaticSyncClass {
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
            r = Resource.index;
            System.out.println(r + " " + i);
            if (r != 14) // if synchronized unreachable
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
        Resource.changeStaticIndex();
        resource.changeIndex();
    }
}

class Resource {
    static int index; //!!RULE: if variable is static only in static method

    Resource(int i) {
        Resource.index = i;
    }

    public static void changeStaticIndex() {
        synchronized (Resource.class) { // !! static synchronized in level Class
            int i = Resource.index;
            if (Thread.currentThread().getName().equals("one"))
                Thread.yield();
            i++;
            Resource.index = i;
        } // synchronized block
    }
    public synchronized void changeIndex() { // ! ! synchronized
//?        synchronized (this) { // synchronized block
        int i = Resource.index;
        if (Thread.currentThread().getName().equals("one"))
            Thread.yield();
        i++;
        Resource.index = i;
//?       } // synchronized block
    }
}

//!! changeStaticIndex and changeIndex are both synchronized, but not synchronized static index
//13 3881
//i = 3881