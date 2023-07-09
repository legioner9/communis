package SE.Collections.Queue;

import java.util.PriorityQueue;
import java.util.Queue;

public class PriorityQueueClass {
    public static void main(String[] args) {
        Queue<String> queue = new PriorityQueue<String>(); // queue with sorted

        queue.add("1");
        queue.add("4");
        queue.add("2");

        for(String item : queue) {
            System.out.println(item);
        }

        while(queue.size() > 0) {
            System.out.println(queue.poll()); // with deleted
        }

    }
}
