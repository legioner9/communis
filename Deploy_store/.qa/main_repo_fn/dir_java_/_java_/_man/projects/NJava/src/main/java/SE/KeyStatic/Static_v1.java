package SE.KeyStatic;

public class Static_v1 {
    static int i = 5;

    static {
        i = 6;
        System.out.println("static initializer i= " + i);
    }

    int j = 9;

    {
        System.out.println("regular initializer j= " + j);
    }

    Static_v1() {
        System.out.println("Static_v1 constructor i= " + i + " j= " + j);
    }

    static int static_method(int j) {
        i = 7;
        System.out.println("static_method i= " + i );

        return j*3;
    }

    public static void main(String[] args) {

        System.out.println("Static_v1.i= " + Static_v1.i);
        Static_v1.static_method(4);
        System.out.println("Static_v1.i= " + Static_v1.i);
    }

    int regular_method(int i) {
        System.out.println("regular_method");
        return --i;
    }
}

class ChildStatic extends Static_v1 {
    @Override
    public int regular_method(int i) {
        return i * i;
    }

}
