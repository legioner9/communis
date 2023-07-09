package SE.Date;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateClass {
    public static void main(String[] args) throws ParseException {

        Date date = new Date();
        System.out.println(date);

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        System.out.println(calendar.getTime());
        calendar.add(Calendar.WEEK_OF_MONTH, 1);
        System.out.println(calendar.getTime());

        DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.FULL);
        System.out.println(dateFormat.format(calendar.getTime()));

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.println(simpleDateFormat.format(calendar.getTime()));

        //    parse    2025-12-24
        Date date2 = simpleDateFormat.parse("2025-12-24 00:00:00");
        calendar.setTime(date2);
        System.out.println(calendar.getTime());


    }
}

//Thu Dec 15 03:37:39 KRAT 2022
//Thu Dec 15 03:37:39 KRAT 2022
//Thu Dec 22 03:37:39 KRAT 2022
//четверг, 22 декабря 2022 г.
//2022-12-22 03:37:39
//Wed Dec 24 00:00:00 KRAT 2025