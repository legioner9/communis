package SE.Collections.List;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.function.Consumer;

public class ArrayListClass {
    public static void main(String[] args) {
//        Collection collection ;
//        Collections collections;
//        Arrays arrays ;

//        ! ArrayList is Array with extends size
//        ? but remove elements - System.arraycopy
//        ? search for elements in index

        ArrayList<String> arrayList = new ArrayList<>();

        arrayList.add("1");
        arrayList.add("2");
        arrayList.add("3");
        arrayList.remove("2");
        System.out.println("arrayList.get(1): " + arrayList.get(1));
        System.out.println("arrayList.size(): " + arrayList.size());
        System.out.println("arrayList.contains(\"1\"): " + arrayList.contains("1"));

        arrayList.ensureCapacity(10);
        System.out.println("arrayList.size(): " + arrayList.size());

        for (String s : arrayList) {
            System.out.println("iter.next(): " + s);
        }

        arrayList.sort(new Comparator<String>() {
            @Override
            public int compare(String a, String b) {
                return -a.compareTo(b); // back sort
            }
        });

        arrayList.forEach(new Consumer<String>() {
            @Override
            public void accept(String s){
                System.out.println(s);
            }
        });
        arrayList.forEach(s -> System.out.println(s));
        arrayList.forEach(System.out::println);

        String[] array = new String[arrayList.size()];
        arrayList.toArray(array);
        for(String s : array){
            System.out.println(s);
        }




    }
}
