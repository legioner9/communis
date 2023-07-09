package MultipleTreads.Phaser;

import java.util.concurrent.Phaser;

public class PhaserClass {
    public static void main(String[] args) {
        Phaser phaser = new Phaser(2);

        new  Washer(phaser);
        new  Washer(phaser);

    }

     static class Washer extends Thread{
         Phaser phaser;

         Washer (Phaser phaser){
             this.phaser = phaser;
             start();
         }

        @Override
         public void run() {
            for (int i = 0; i < 3; i++) {
                System.out.println(getName() + " washing " + i + " car");
                phaser.arriveAndAwaitAdvance();
            }

        }
     }
}

// https://www.youtube.com/watch?v=_Xku6QGzUwY&list=PL786bPIlqEjRDXpAKYbzpdTaOYsWyjtCX&index=87
// two washer threads once at a time per car
//Thread-0 washing 0 car
//Thread-1 washing 0 car
//Thread-1 washing 1 car
//Thread-0 washing 1 car
//Thread-1 washing 2 car
//Thread-0 washing 2 car
