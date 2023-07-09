package AwesomeUtils.TimeUnit;

import java.util.concurrent.TimeUnit;

public class TimeUnitClass {
    public static void main(String[] args) {
        System.out.println(TimeUnit.DAYS.toMillis(14));
        System.out.println(TimeUnit.DAYS.toHours(14));

    }
}

//1209600000 mills at 14 days
//336 hours at 14 days
