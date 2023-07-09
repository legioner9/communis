package MultipleTreads.Semaphors;

import java.util.concurrent.Semaphore;

public class SemaphorClass {
    public static void main(String[] args) {
        Semaphore table = new Semaphore(2);

        new Person(table).start();
        new Person(table).start();
        new Person(table).start();
        new Person(table).start();
        new Person(table).start();
        new Person(table).start();
        new Person(table).start();



    }
}

class Person extends Thread {
    Semaphore table;
    Person(Semaphore table){
        this.table = table;
    }
    @Override
    public void run() {
        System.out.println(getName() + " waiting" );
        try {
            table.acquire();
            System.out.println(getName() + " eat");
            sleep(1000);
            table.release();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}

//Thread-0 waiting
//Thread-0 eat
//Thread-1 waiting
//Thread-2 waiting
//Thread-1 eat
//Thread-3 waiting
//Thread-4 waiting
//Thread-5 waiting
//Thread-6 waiting
//Thread-2 eat
//Thread-3 eat
//Thread-4 eat
//Thread-5 eat
//Thread-6 eat