package SE.Collections.Set;

import java.util.HashSet;
import java.util.Set;

public class HashSetClass {
    public static void main(String[] args) {
        Set<Integer> set = new HashSet<Integer>();

        set.add(1);
        set.add(2);
        set.add(2);

        for (Integer i : set) {
            System.out.println("i is " + i);
        }
    }
}
