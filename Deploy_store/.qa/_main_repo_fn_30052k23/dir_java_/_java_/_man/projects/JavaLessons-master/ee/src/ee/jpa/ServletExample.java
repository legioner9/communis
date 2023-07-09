package ee.jpa;

import ee.jpa.entities.Book;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/jpaExample")
public class ServletExample extends HttpServlet {
    @EJB
    JpaBean jpaBean;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        jpaBean.saveBook(new Book("main"));
    }
}