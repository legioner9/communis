package SE.Protected;

public class Start {
    public static void main(String[] args) {
        Human man = new Human();
        System.out.println("before sport: man.getWeight() = " + man.getWeight());
        man.sport();
        System.out.println("after sport: man.getWeight() = " + man.getWeight());
    }
}
