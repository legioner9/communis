package SE.Operators;

public class Switch {
    public static void main(String[] args) {
        int a = 2;
        switch(a){
            case 0:
                System.out.println("a = 0");
            break;
            default:
                System.out.println("a != 0");
                break;
            case 2:
                System.out.println("a = 2");
                break;
        }
    }

}
