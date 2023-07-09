package SE.HashEquals;

import java.util.HashMap;
import java.util.Map;

public class MapClass {
    public static void main(String[] args) {

        Map<Ticket, Book> Library = new HashMap<>();

        Library.put(new Ticket(10), new Book("TSH", "JS"));
        System.out.println(Library.get(new Ticket(10)).title); //! Cannot read field "title" because the return value of "java.util.Map.get(Object)" is null

    }
}

class Book {
    public String author;
    public String title;

    Book(String author, String title) {
        this.author = author;
        this.title = title;
    }
}

class Ticket {
    public int id;

    Ticket(int id) {
        this.id = id;
    }
}

