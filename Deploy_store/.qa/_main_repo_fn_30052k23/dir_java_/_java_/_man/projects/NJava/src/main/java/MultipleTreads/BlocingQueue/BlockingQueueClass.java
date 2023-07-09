package MultipleTreads.BlocingQueue;

import java.util.PriorityQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;

public class BlockingQueueClass {
    public static void main(String[] args) {
        BlockingQueue<String> queue = new PriorityBlockingQueue<>();
        new Thread() {
            @Override
            public void run() {
                try {
                    System.out.println(queue.take()); // ! sleep not empty elements
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }
        }.start();

        new Thread() {
            @Override
            public void run() {
                System.out.println(queue.add("this is a test"));
            }
        }.start();
    }
}

// https://www.youtube.com/watch?v=vqPXhzD2bl0&list=PL786bPIlqEjRDXpAKYbzpdTaOYsWyjtCX&index=89&t=20s
//true
//this is a test