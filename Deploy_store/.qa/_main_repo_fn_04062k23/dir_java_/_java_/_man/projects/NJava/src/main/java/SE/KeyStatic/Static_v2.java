package SE.KeyStatic;

public class Static_v2 {
    static int i=0;

    static {
        System.out.println("static initializer");
    }

    int j;

    {
        System.out.println("regular initializer");
    }

    Static_v2() {
        i++;
        System.out.println("constructor");
    }

    static int static_method(int j) {
        System.out.println("static_method");
        return j;
    }

    int regular_method(int i) {
        System.out.println("regular_method");
        return --i;
    }

    public static void main(String[] args) {

        new Static_v2(); //! static initializer start only once
        System.out.println("Static_v2.i = " + Static_v2.i); // ! i=1
        new Static_v2();
        System.out.println("Static_v2.i = " + Static_v2.i); // ! i=2

    }
}

//!static initializer
//!regular initializer
//!constructor
//!Static_v2.i = 1
//!regular initializer
//!constructor
//!Static_v2.i = 2
