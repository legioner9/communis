package MultipleTreads.ThreadLocalRandom;

import java.util.concurrent.ThreadLocalRandom;

public class ThreadLocalRandomClass {
    public static void main(String[] args) {
        System.out.println(Math.random());
        System.out.println(ThreadLocalRandom.current().nextInt());
    }
}
