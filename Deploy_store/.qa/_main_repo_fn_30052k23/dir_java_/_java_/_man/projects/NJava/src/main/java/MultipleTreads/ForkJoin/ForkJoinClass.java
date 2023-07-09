package MultipleTreads.ForkJoin;

import java.util.Date;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.RecursiveTask;

public class ForkJoinClass {

    static long numOfOperations = 10L;
    static int numOfThreads = Runtime.getRuntime().availableProcessors();

    public static void main(String[] args) {
        System.out.println(new Date());
//? direct flow
//        long j = 0;
//        for (long i = 0; i < numOfOperations; i++) {
//            j += i;
//        }
//        System.out.println(j);
//? forkJoin flow


        ForkJoinPool forkJoinPool = new ForkJoinPool(numOfThreads);
        System.out.println(forkJoinPool.invoke(new MyForkJoin(0, numOfOperations)));
        System.out.println(numOfThreads);
        System.out.println(new Date());

    }

    static class MyForkJoin extends RecursiveTask<Long> {

        long from, to;

        public MyForkJoin(long from, long to) {
            this.from = from;
            this.to = to;
        }

        @Override
        protected Long compute() {

            if ((to - from) <= numOfOperations / numOfThreads) {

                long result = 0;
                for (long i = from; i < to; i++) {
                    result += i;
                }
                return result;

            } else {

                long middle = (to + from) / 2;
                MyForkJoin firstHalf = new MyForkJoin(from, middle);
                firstHalf.fork();
                MyForkJoin secondHalf = new MyForkJoin(middle + 1, to);
                long secondValue = secondHalf.compute();
                return firstHalf.join() + secondValue;

            }
        }
    }
}

// https://www.youtube.com/watch?v=Ft8D_Toqa0k&list=PL786bPIlqEjRDXpAKYbzpdTaOYsWyjtCX&index=90
//! not correct work
