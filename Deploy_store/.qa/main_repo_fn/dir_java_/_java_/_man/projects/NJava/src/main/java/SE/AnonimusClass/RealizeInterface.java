package SE.AnonimusClass;

public class RealizeInterface {
    public static void main(String[] args) {
        Comparable compare = new Comparable(){
            @Override
            public int compareTo(Object o) {
                return 0;
            }
        };
    }
}
