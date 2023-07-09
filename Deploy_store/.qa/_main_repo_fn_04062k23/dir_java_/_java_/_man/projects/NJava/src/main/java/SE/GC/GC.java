package SE.GC;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class GC {
    public static void main(String[] args) {
        method();
    }

    private static void method() {
        Runtime runtime = Runtime.getRuntime();
        System.out.println("before totalMemory: " + runtime.totalMemory());
        System.out.println("before freeMemory: " + runtime.freeMemory());

        List<Date> dateList = new ArrayList<>();
        for (int i = 0; i < 1_000_000_0; i++) {
            Date date = new Date();
            dateList.add(date);
            date = null;
        }
        System.out.println("after loop totalMemory: " + runtime.totalMemory());
        System.out.println("after loop freeMemory: " + runtime.freeMemory());
        dateList = null;
        System.gc();
        System.out.println("after gs totalMemory: " + runtime.totalMemory());
        System.out.println("after gs freeMemory: " + runtime.freeMemory());

// !       protected void finalize () throws Throwable { // deprecated
//        }
    }
}
