package MultipleTreads.SyncCollection;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class StrongSyncCollectionClass {

    public static void main(String[] args) {

        while (true) {

                NameList names = new NameList();
                names.add("first");

                class MyThread extends Thread {
                    @Override
                    public void run() {
                        System.out.println(names.removeFirst());
                    }
                }
                MyThread myThread = new MyThread();
                myThread.setName("one");
                myThread.start();
                new MyThread().start();

        }
    }

    static class NameList {
        private List<String> list = Collections.synchronizedList(new ArrayList<>());

        public synchronized void add(String name) { //! synchronized any shared methods between threads
            list.add(name);
        }

        public synchronized String removeFirst() { //! synchronized any shared methods between threads
            if (!list.isEmpty()) {
                if (Thread.currentThread().getName().equals("one"))
                    Thread.yield(); //? yield for wait collisions
                return list.remove(0);
            }
            return null;
        }
    }
}

//! never collision