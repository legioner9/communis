package MultipleTreads.SheduledExecuterServise;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class ScheduledExecutorServiceClass {
    public static void main(String[] args) {
        ScheduledExecutorService scheduledExecutorService = Executors.newSingleThreadScheduledExecutor();
        scheduledExecutorService.schedule(new MyThread(), 3, TimeUnit.SECONDS);
    }

    static class MyThread extends Thread {
        @Override
        public void run() {
            System.out.println(1);
        }
    }
}
