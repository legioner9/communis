package MultipleTreads.SyncCollection;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class AnySyncCollectionClass {

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

        public void add(String name) {
            list.add(name);
        }

        public String removeFirst() { //! removeFirst not synchronized but List methods are synchronized
            if (!list.isEmpty()) {
                if (Thread.currentThread().getName().equals("one"))
                    Thread.yield(); //? yield for wait collisions
                return list.remove(0);
            }
            return null;
        }
    }
}

//! once

//first
//null
//first
//Exception in thread "one" java.lang.IndexOutOfBoundsException: Index 0 out of bounds for length 0
//	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:100)
//	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:106)
//	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:302)