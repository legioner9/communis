package SE.KeyStatic;

public class Static_v {
    static int i = 5;

    static {
        i = 6;
        System.out.println("static initializer");
    }

    int j;

    {
        System.out.println("regular initializer");
    }

    Static_v() {
        System.out.println("constructor");
    }

    static int static_method(int j) {
        System.out.println("static_method");
        i = 7;
        return j;
    }

    public static void main(String[] args) {

        Static_v static_v1 = new Static_v();
        System.out.println("static_method(3): " + static_method(3));
        System.out.println("Static_v1.static_method(4): " + Static_v.static_method(4));

        System.out.println("static_v1.static_method(3): " + static_v1.regular_method(3));

        ChildStatic child = new ChildStatic();
        static_method(11);
        child.regular_method(11);

    }

    int regular_method(int i) {
        return --i;
    }
}

