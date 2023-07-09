package SE.For;

public class ForExtend {
    public static void main(String[] args) {

        int[] values = new int[5];
        values[0] = 6;

        for (int i = start(); condition(i, values.length); i = tick_end(i))
            body_loop(i,values);

    }

    static int start() {
        System.out.println("start");
        return 0;
    }

    static boolean end() {
        System.out.println("end");
        return false;
    }

    static boolean condition(int i, int length) {
        return i < length || end();
    }

    static int tick_end(int i) {
        System.out.println("tick " + i++);
        return i;
    }

    static void body_loop(int i, int []values) {
        System.out.println("value[" + i + "] = " + values[i]);
    }

}
