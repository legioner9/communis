package MultipleTreads.WaitNotify;

public class NWSimpleClass {

    final Object obj = new Object();
    public static void main(String[] args) throws InterruptedException {

    }
        private void meth() throws InterruptedException {
            synchronized (obj) {

                        obj.wait();
                System.out.println("Ok!");
            }

        }
        private void meth2() throws InterruptedException {
            synchronized (obj) {
                System.out.println("Ok?");
                notify();
            }
        }





}



