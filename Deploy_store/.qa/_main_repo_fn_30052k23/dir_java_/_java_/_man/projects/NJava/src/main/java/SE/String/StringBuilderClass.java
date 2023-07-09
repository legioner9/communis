package SE.String;

public class StringBuilderClass {
    public static void main(String[] args) {
        StringBuilder sb = new StringBuilder("vsavfd");
        sb.append("-jjj");
        System.out.println(sb);
        sb.insert(1, "0");
        System.out.println(sb);
    }
}
