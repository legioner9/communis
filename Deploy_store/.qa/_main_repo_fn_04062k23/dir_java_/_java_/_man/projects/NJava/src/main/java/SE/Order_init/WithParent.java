package SE.Order_init;

public class WithParent extends Parent {

    static int s = 10;

    static {
        System.out.println("static initializer");
    }

    int r = 1;

    {
        System.out.println("regular initializer"); //! go to after super    //
    }

    WithParent() {
        super(); //! go to regular initializer    //
        System.out.println("constructor WithParent");
    }

    public static void main(String[] args) {
        new WithParent();
    }
}

class Parent {
    Parent() {
        System.out.println("constructor Parent");
    }
}

//!static initializer    // I static init
//!constructor Parent   // II super ( go to Parent )
//!regular initializer   // III regular init
//constructor WithParent