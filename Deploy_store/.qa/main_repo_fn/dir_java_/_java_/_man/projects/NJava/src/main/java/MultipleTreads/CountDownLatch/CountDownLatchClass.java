package MultipleTreads.CountDownLatch;

import java.util.concurrent.CountDownLatch;

public class CountDownLatchClass {
    public static void main(String[] args) throws InterruptedException {
        CountDownLatch countDownLatch = new CountDownLatch(3);

        new Worker(countDownLatch);
        new Worker(countDownLatch);
        new Worker(countDownLatch);

        countDownLatch.await();
        System.out.println("all workers completed");
    }

}

class Worker extends Thread{
    CountDownLatch countDownLatch;
    Worker(CountDownLatch countDownLatch){
        this.countDownLatch = countDownLatch;
        start();
    }
    @Override
    public void run() {
        try {
            sleep(3000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        System.out.println(getName() + " worker done");
        countDownLatch.countDown();
    }
}
