package SE.GetSetIs;

public class Start {
    public static void main(String[] args) {
        Human man = new Human();
        man.setBlond(true);
        if(man.isBlond()){
            System.out.println("man is blond");
        }
    }
}
