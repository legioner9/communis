package SE.Assertion;

public class Assertion {
    public static void main(String[] args) {
        int[] x = new int[]{1, 2, 3, 4, 5, 6, 7};
        method(x);
    }

    static void method(int[] args) {
        System.out.println("args.length = " + args.length);
        assert args.length < 1;
    }
}
// java -ea Assertion.java
// args.length = 7
// Exception in thread "main" java.lang.AssertionError
//        at SE.Assertion.Assertion.method(Assertion.java:11)
//        at SE.Assertion.Assertion.main(Assertion.java:6)