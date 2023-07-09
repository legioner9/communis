package SE.KeyStatic;

public class Static_v3 {
    static int i=0;

    static {
        System.out.println("static initializer");
    }

    int j;

    {
        System.out.println("regular initializer");
    }

    Static_v3() {
        i++;
        System.out.println("constructor");
    }

    static int static_method(int j) {
        System.out.println("static_method");
        return j*j;
    }

    int regular_method(int i) {
        System.out.println("regular_method");
        return --i;
    }

    public static void main(String[] args) {

        System.out.println("Static_v3 static_v3 = new Static_v3()");
        Static_v3 static_v3 = new Static_v3();
        System.out.println("Static_v3.i = " + Static_v3.i); // ! i=1

        System.out.println("Static_v3.static_method(4): " + Static_v3.static_method(4));
        System.out.println("static_v3.regular_method(6): " + static_v3.regular_method(6));

    }
}

//! static initializer
//! Static_v3 static_v3 = new Static_v3()
//! regular initializer
//! constructor
//! Static_v3.i = 1
//! static_method
//! Static_v3.static_method(4): 16
//! regular_method
//! static_v3.regular_method(6): 5
