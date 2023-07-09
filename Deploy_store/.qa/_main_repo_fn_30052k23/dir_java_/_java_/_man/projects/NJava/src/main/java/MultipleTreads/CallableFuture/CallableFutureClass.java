package MultipleTreads.CallableFuture;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

public class CallableFutureClass {
    public static void main(String[] args) throws ExecutionException, InterruptedException {

        Callable<Integer> callable = new MyCallable();
        FutureTask<Integer> futureTask = new FutureTask<>(callable);
        new Thread(futureTask).start();
        System.out.println(futureTask.get());
        System.out.println("start");

    }

    static class MyCallable implements Callable<Integer> {

        @Override
        public Integer call() throws Exception {
            int index = 0;
            for (int i = 0; i < 10; i++) {
                index++;
                Thread.sleep(300);
            }
            return index;
        }
    }
}
