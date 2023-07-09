package MultipleTreads.Deadlock;

public class DeadlockClass {
    public static void main(String[] args) throws InterruptedException {

        while(true) {
        ResourceA resourceA = new ResourceA();
        ResourceB resourceB = new ResourceB();

        resourceA.resourceB = resourceB;
        resourceB.resourceA = resourceA;

        MyThreadA myThreadA = new MyThreadA();
        MyThreadB myThreadB = new MyThreadB();


        myThreadA.resourceA = resourceA;
        myThreadB.resourceB = resourceB;

        myThreadA.start();
        myThreadB.start();
    }

    }

    private static class MyThreadA extends Thread {
        ResourceA resourceA;

        @Override
        public void run() {
            System.out.println(resourceA.gets());
        }

    }

    private static class MyThreadB extends Thread {
        ResourceB resourceB;

        @Override
        public void run() {
            System.out.println(resourceB.gets());
        }

    }


}

class ResourceA {
    ResourceB resourceB;

    public synchronized int gets() {
        return resourceB.returns();
    }

    public synchronized int returns() {
        return 1;
    }
}

class ResourceB {
    ResourceA resourceA;

    public synchronized int gets() {
        return resourceA.returns();
    }

    public synchronized int returns() {
        return 2;
    }
}

//! never?
// https://www.youtube.com/watch?v=_DcbJ3eYULw&list=PL786bPIlqEjRDXpAKYbzpdTaOYsWyjtCX&index=74
