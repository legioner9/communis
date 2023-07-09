package SE.Overload;

import java.io.IOException;

public class Overload {

    public static void main(String[] args) throws Exception {

        System.out.println("Overload overload = new Overload()");
        OverloadChild overloadChild = new OverloadChild();
        System.out.println("overloadChild.add(3,4): " + overloadChild.add(3,4));
        System.out.println("overloadChild.add(3d,4d): " + overloadChild.add(3d,4d));
        System.out.println("overloadChild.add(3f,4f): " + overloadChild.add(3f,4f));
        System.out.println("overloadChild.add(4): " + overloadChild.add(4));

    }

    int add(int x, int y) throws Exception {
        return x + y;
    }
    double add(double x, double y) throws OutOfMemoryError {
        return x + y;
    }

    float add(float x, float y) throws IOException {
        return x + y;
    }
}

class OverloadChild extends Overload {
    public int add(int x){
        return x*x;
    }
}