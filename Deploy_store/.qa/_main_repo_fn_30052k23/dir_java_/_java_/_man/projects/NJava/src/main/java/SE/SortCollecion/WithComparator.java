package SE.SortCollecion;

import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;

public class WithComparator {
    public static void main(String[] args) {

        Set<Users_2> set = new TreeSet<>(new ComparatorUsers_2());

        set.add(new Users_2(5));
        set.add(new Users_2(7));
        set.add(new Users_2(1));

        for (Users_2 user : set) {
            System.out.println(user);
        }
    }
}

class ComparatorUsers_2 implements Comparator<Users_2> {
    @Override
    public int compare(Users_2 o1, Users_2 o2) {
        return o2.getId() - o1.getId(); //! back sort
    }
}

class Users_2 {
    private int id;

    public Users_2(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Users_2{id = " + id + "}";
    }
}

//Users_2{id = 7}
//Users_2{id = 5}
//Users_2{id = 1}