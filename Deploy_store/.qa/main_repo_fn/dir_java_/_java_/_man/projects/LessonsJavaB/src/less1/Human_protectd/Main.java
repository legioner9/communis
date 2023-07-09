package less1.Human_protectd;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");
        Human human = new Human();
        human.setWeight(90);
        System.out.println("Weight before: " + human.getWeight());
        human.sport_Human();
        System.out.println("Weight after: " + human.getWeight());
    }
}