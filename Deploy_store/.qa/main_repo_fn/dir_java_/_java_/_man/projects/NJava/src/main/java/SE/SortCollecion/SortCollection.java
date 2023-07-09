package SE.SortCollecion;

import java.util.Set;
import java.util.TreeSet;

public class SortCollection {
    public static void main(String[] args) {
        Set<Users> set = new TreeSet<>();
        set.add(new Users(5));
        set.add(new Users(7));
        set.add(new Users(1));

        for (Users user : set) {
            System.out.println(user);
        }
    }
}

class Users implements Comparable<Users> {
    int id;

    public Users(int id) {
        this.id = id;
    }

    @Override
    public int compareTo(Users a) {
        return a.id - id; //! back compatibility
    }

    @Override
    public String toString() {
        return "Users{id = " + id + "}";
    }
}
