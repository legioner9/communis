package SE.Constructor.v2;

public class SuperThis {
    SuperThis(int i) {
        super();
        System.out.println("SuperThis(int i): " + i);
    }

    SuperThis() {
        this(4);
    }

    public static void main(String[] args) {

        System.out.println();
        System.out.println("new SuperThis();");
        new SuperThis();
        System.out.println();
        System.out.println("new SuperThis(10);");
        new SuperThis(10);

    }
}

//? new SuperThis();
//? SuperThis(int i): 4
//
//? new SuperThis(10);
//? SuperThis(int i): 10
