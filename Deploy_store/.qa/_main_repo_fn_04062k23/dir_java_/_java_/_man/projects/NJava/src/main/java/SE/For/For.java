package SE.For;

public class For {
    public static void main(String[] args) {
        int[] values = new int[5];
        values[0] = 10;

        for (int i = 0; i < values.length; i++) {
            System.out.println("value[" + i + "] = " + values[i]);
        }

        values[2] = 2;

        int i = 0;
        for (int v : values) {
            System.out.println("value[" + i + "] = " + v);
            i++;
        }

    }
}
