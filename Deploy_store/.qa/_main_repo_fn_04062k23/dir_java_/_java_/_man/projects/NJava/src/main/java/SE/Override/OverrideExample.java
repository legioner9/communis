package SE.Override;

import java.io.FileNotFoundException;
import java.io.IOException;

class Parent2 {
    public Parent method2() throws IOException{
        return new Parent();
    }
}

class Child2 extends Parent2 {
    @Override
    public Child method2() throws FileNotFoundException { //! overriding expected return Parent or Childing from him
        //! AND child  throws of Parent IOException=>FileNotFoundException or RuntimeExceptions
        return new Child();
    }
}

class Parent {
    public int method() { //! if static method NOT by overridden
        return 1;
    }
}

class Child extends Parent {
    @Override
    public int method() { //! NOT be protected
        return 2;
    }
}

public class OverrideExample {
    public static void main(String[] args) throws IOException { //! method2 throws IOException -> throw or try in class

        Parent parent = new Parent();
        Parent child = new Child();

        System.out.println("parent.method() = " + parent.method());
        System.out.println("child.method() = " + child.method());

        Parent2 parent2 = new Parent2();
        Parent2 child2 = new Child2();

        System.out.println("parent2.method2() = " + parent2.method2());
        System.out.println("child2.method2() = " + child2.method2());

    }

}

//? parent.method() = 1
//? child.method() = 2

//? parent2.method2() = SE.Override.Parent@27716f4
//? child2.method2() = SE.Override.Child@8efb846
