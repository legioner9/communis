package MultipleTreads.Priority;

public class TreeThreadClass extends Thread{
    public TreeThreadClass() {
        this.start();
    }

    public void run() {

        System.out.println(Thread.currentThread().getName() + " уступает свое место другим");
        Thread.yield();
        System.out.println(Thread.currentThread().getName() + " has finished executing.");
    }

    public static void main(String[] args) {
        new TreeThreadClass();
        new TreeThreadClass();
        new TreeThreadClass();
    }
}

//! among other cases
//Thread-1 уступает свое место другим
//Thread-2 уступает свое место другим
//Thread-1 has finished executing.
//Thread-2 has finished executing.
//Thread-0 уступает свое место другим
//Thread-0 has finished executing.
