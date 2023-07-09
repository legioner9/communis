package SE.Assretion;

public class Assretion {
    public static void main(String[] args) {
        int[] x = new int[]{1, 2, 3, 4, 5, 6, 7};
        method(x);
    }

    static void method(int[] args) {
        System.out.println("args.length = " + args.length);
        assert (7 < 1);
    }
}
