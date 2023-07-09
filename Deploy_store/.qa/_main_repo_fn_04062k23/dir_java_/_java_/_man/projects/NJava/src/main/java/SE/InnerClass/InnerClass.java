package SE.InnerClass;

public class InnerClass {

    int index = 10;
    static  int staticIndex = 100;

    public static void main(String[] args) {
// ?       new Inner() // not valid - cannot be referenced from a static context see class Demo
        new Demo().meth().prnIndex();
        new InnerStatic().prnStaticIndex();

    }

    class Inner {
        void prnIndex() {
            System.out.println(index);
        }
    }

    static class InnerStatic {
        void prnStaticIndex() {
            System.out.println(staticIndex);
        }
    }
}

class Demo {
    InnerClass.Inner meth() {
        InnerClass.Inner inner = new InnerClass().new Inner();
        return inner;
    }
}
