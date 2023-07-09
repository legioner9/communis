package SE.HashEquals;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public class WithHashEqual {

    public static void main(String[] args) {

        Map<Ticket_2, Book_2> Library_2 = new HashMap<>();

        Library_2.put(new Ticket_2(20, "a"), new Book_2("TSH", "JS"));
        Library_2.put(new Ticket_2(20, "b"), new Book_2("TSH_2", "JS_2"));

        System.out.println(Library_2.get(new Ticket_2(20, "a")).title);
        System.out.println(Library_2.get(new Ticket_2(20, "b")).title);


    }
}

class Book_2 {
    public String author;
    public String title;

    Book_2(String author, String title) {
        this.author = author;
        this.title = title;
    }
}

class Ticket_2 {
    public int id;
    public String region;

    Ticket_2(int id, String region) {
        this.id = id;
        this.region = region;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Ticket_2 ticket_2)) return false;
        return id == ticket_2.id && Objects.equals(region, ticket_2.region);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, region);
    }
}

