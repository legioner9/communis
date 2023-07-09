package MultipleTreads.BlocingQueue;

import java.util.PriorityQueue;
import java.util.Queue;

public class NonBlockingQueueClass {
    public static void main(String[] args) {
        Queue<String> queue = new PriorityQueue<>();
        new Thread(){
            @Override
            public void run() {
                System.out.println(queue.remove());
            }
        }.start();

        new Thread(){
            @Override
            public void run() {
                System.out.println(queue.add("this is a test"));
            }
        }.start();
    }
}

//true
//Exception in thread "Thread-0" java.util.NoSuchElementException
//	at java.base/java.util.AbstractQueue.remove(AbstractQueue.java:117)
//	at MultipleThread.CreateThread.BlocingQueue.BlockingQueueClass$1.run(BlockingQueueClass.java:12)