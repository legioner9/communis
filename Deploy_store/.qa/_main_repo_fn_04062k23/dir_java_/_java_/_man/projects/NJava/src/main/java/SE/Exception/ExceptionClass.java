package SE.Exception;

import java.io.IOException;
import java.util.Arrays;

public class ExceptionClass{
    public static void main(String[] args) {
        new ExceptionClass().method();
    }

    void method() {
        try {
//            throw new Exception();
            throw new IOException();
//            System.out.println("try");
        } catch (Exception e) {
            System.out.println(Arrays.toString(e.getStackTrace()));
            System.out.println("catch");
        } finally {
            System.out.println("finally");
        }

    }
}
