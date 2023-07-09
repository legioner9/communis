package SE.Generics;


import java.io.Serializable;

public class GenericClass<T extends Comparable & Serializable>{

    T value;

    public static void main(String[] args) {

        GenericClass <Car> genericClass = new GenericClass<>();

        genericClass.value = new Car();

        genericClass.<Integer>method(43);
        genericClass.<String>method("43");

    }

    <T> T method(T type) {
        System.out.println(type);
        return type;
    }

//    int method (int type) {
//        return type;
//    }
}

class Car implements Comparable , Serializable {

    @Override
    public int compareTo(Object o) {
        return 0;
    }
}
