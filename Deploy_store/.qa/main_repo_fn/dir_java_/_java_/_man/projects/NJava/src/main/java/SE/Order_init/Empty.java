package SE.Order_init;

public class Empty {
    {
        System.out.println("regular initializer");
    }
    int r = 1;
    static {
        System.out.println("static initializer");
    }
    static int s = 10;
    Empty(){
        System.out.println("constructor");
    }
    public static void main(String[] args) {
        System.out.println("main");
        System.out.println("    s = " + s);
//        Empty empty = new Empty();
//        System.out.println("    empty.r = " + empty.r);
    }
}

//static initializer
//main
//    s = 10
