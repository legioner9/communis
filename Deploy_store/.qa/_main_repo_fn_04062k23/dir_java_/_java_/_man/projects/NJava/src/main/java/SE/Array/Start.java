package SE.Array;

public class Start {
    public static void main(String[] args) {

        int[] array = {1, 2, 5};
        array[2] = 4;
        boolean[] booleanArray = {true, false};
        int[] intArray = {};
        float[] floats = new float[10];

        for (int k : array) {
            System.out.println("k: " + k);
        }

        int[][] a2 = new int[2][];
        a2[0] = new int[3];
        a2[1] = new int[5];
    }
}
