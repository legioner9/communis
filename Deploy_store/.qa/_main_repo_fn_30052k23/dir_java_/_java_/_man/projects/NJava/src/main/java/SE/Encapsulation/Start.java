package SE.Encapsulation;

public class Start {
    public static void main(String[] args) {
        Person man = new Person();
        man.setAge(24);
        System.out.println("yang man.getName: " + man.getName());
        man.setAge(56);
        System.out.println("older man.getName: " + man.getName());
    }
}
