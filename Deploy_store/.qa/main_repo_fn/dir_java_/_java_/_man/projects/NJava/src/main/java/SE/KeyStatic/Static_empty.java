package SE.KeyStatic;

public class Static_empty {
    {
        System.out.println("start");
    }

    Static_empty() {
        System.out.println("constructor");
    }

    static void static_method() {
        System.out.println("static_method");
    }

    public static void main(String[] args) {
        Static_empty static_empty = new Static_empty();
        static_empty.regular_method();
        static_method();
    }

    public void regular_method() {
        System.out.println("regular_method");
    }
}

class SimpleEntry {

}