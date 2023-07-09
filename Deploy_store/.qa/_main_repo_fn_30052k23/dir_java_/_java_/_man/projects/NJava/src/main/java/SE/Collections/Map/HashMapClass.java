package SE.Collections.Map;

import java.util.*;

public class HashMapClass {
    public static void main(String[] args) {

        HashMap<String, String> hashMap = new HashMap<>();

        hashMap.put("1", "one");
        hashMap.put("2","two");
        hashMap.put("1", "1");

        Set sentrySet = hashMap.entrySet();
        for(Object o : sentrySet) {
            System.out.println(o.toString());
        }
        Set keySet = hashMap.keySet();
        for(Object o : keySet) {
            System.out.println(o.toString());
        }
        System.out.println();
        Collection values =  hashMap.values();
        for(Object o : values) {
            System.out.println(o.toString());
        }

    }
}
