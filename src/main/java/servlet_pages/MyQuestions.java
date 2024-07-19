package servlet_pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import entity.QueDemo;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import services.HibUtilQuiz;


public class MyQuestions extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        Session session = null;
        Transaction tx = null;

        try {
            session = HibUtilQuiz.getSessionFactory().openSession();
            tx = session.beginTransaction();

            // Fetching the data
            List<QueDemo> list = session.createQuery("FROM QueDemo where qid=1", QueDemo.class).list();

            // Logging the fetched questions
            for (QueDemo queDemo : list) {
                System.out.println("Question: " + queDemo.getQuestion());
            }

            HttpSession httpsession = request.getSession();

            if (list != null && !list.isEmpty()) {
                RequestDispatcher rd = request.getRequestDispatcher("QuetionsDemo.jsp");
                httpsession.setAttribute("list", list);
                rd.forward(request, response);
             
            } else {
                response.sendRedirect("Home.jsp");
            }

            tx.commit(); // Committing the transaction
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback(); // Rolling back the transaction in case of an error
            }
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while processing your request.");
        } 
        
        
    }
}
