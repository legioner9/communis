package MultipleTreads.Exchager;

import java.util.concurrent.Exchanger;

public class ExchangerClass {
    public static Exchanger<String> exchanger = new Exchanger<>();

    public static void main(String[] args) {
        new Mike(exchanger);
        new Anket(exchanger);
    }

    static class Mike extends Thread {
        Exchanger<String> exchanger;

        public Mike(Exchanger<String> exchanger) {
            this.exchanger = exchanger;
            start();
        }

        @Override
        public void run() {
            try {
                exchanger.exchange("My name is Mike");
                sleep(2000);
                exchanger.exchange("I`m 20 years old");
                sleep(1000);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }

    static class Anket extends Thread {
        Exchanger<String> exchanger;

        public Anket(Exchanger<String> exchanger) {
            this.exchanger = exchanger;
            start();
        }


        @Override
        public void run() {
            try {
                System.out.println(exchanger.exchange(null));
                sleep(2000);
                System.out.println(exchanger.exchange(null));
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }

        }
    }
}
