package MultipleTreads.WaitNotify;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

public class WNExampClass {
    static final List<String> strings = Collections.synchronizedList(new ArrayList());

    public static void main(String[] args) {
        new Operator().start();
        new Machine().start();
    }

    static class Operator extends Thread {
        Scanner scanner = new Scanner(System.in);

        @Override
        public void run() {
            while (true) {
                synchronized (strings) {
                    strings.add(scanner.nextLine());
                    strings.notify();
                    try {
                        Thread.sleep(500);
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }

                }
            }
        }
    }

    static class Machine extends Thread {
        @Override
        public void run() {
            while (strings.isEmpty()) {
                synchronized (strings) {
                    try {
                        strings.wait();
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                    System.out.println(strings.remove(0));
                }
            }

        }

    }
}

//! not working
// https://www.youtube.com/watch?v=ns1imummWPw&list=PL786bPIlqEjRDXpAKYbzpdTaOYsWyjtCX&index=77