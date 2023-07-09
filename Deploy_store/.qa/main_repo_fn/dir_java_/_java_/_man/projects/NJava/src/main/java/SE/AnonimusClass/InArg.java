package SE.AnonimusClass;

public class InArg {
    public static void main(String[] args) {
        methodWithAnonymous(new Popcorn_2(){
            void prnPopcorn() {
                System.out.println("main");
            }
        });
    }

    static void methodWithAnonymous(Popcorn_2 popcorn_2) {
        popcorn_2.prnPopcorn();
    }
}

class Popcorn_2 {
    void prnPopcorn() {
        System.out.println("popcorn");
    }

    void parentMethod() {
        System.out.println("parentMethod");
    }
}
