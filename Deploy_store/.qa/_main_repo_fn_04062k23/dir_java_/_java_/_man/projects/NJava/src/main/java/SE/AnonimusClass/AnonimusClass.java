package SE.AnonimusClass;

public class AnonimusClass {
    public static void main(String[] args) {
        Popcorn popcorn = new Popcorn(){ //? that not Popcorn but anonimus class that extend Popcorn
            void prnPopcorn(){ //? redefine prnPopcorn()
                System.out.println("main");
            }
        };

        popcorn.prnPopcorn(); // ? redefine prnPopcorn()
        popcorn.parentMethod(); // ? original parent method

    }
}

class Popcorn{
    void prnPopcorn(){
        System.out.println("popcorn");
    }
    void parentMethod(){
        System.out.println("parentMethod");
    }
}
