package ee.jpa.jpql;

import ee.jpa.entities.Book;

import javax.persistence.*;
import java.util.List;

public class OrderByLesson {
    public static void main(String[] args) {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("bookUnit");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        entityManager.getTransaction().begin();
        entityManager.persist(new Book("title"));
        entityManager.persist(new Book("title3"));
        entityManager.persist(new Book("title2"));
        entityManager.getTransaction().commit();

        TypedQuery<Book> query = entityManager.createQuery("select b from Book b order by b.title", Book.class);
        Query query1 = entityManager.createQuery("select b from Book b order by b.title desc");
        Query query2 = entityManager.createQuery("select b from Book b order by b.title, b.id asc");

        List<Book> books = query.getResultList();
        for(Book book1: books) {
            System.out.println(book1.getId());
            System.out.println(book1.getTitle());
        }

        entityManager.close();
        entityManagerFactory.close();
    }
}
