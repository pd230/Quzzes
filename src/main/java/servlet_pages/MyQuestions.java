package servlet_pages;

import java.io.IOException;
import java.util.List;

import org.hibernate.Session;

import entity.QueDemo;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import services.HibUtilQuiz;
import services.QuizService;


public class MyQuestions extends HttpServlet {
	
	QuizService quizService = new QuizService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        try {
//        	list of data
        	List<QueDemo> dataList = quizService.getQuestions();

           // Store data in session
           HttpSession httpsession = request.getSession();
           
           httpsession.setAttribute("dataList", dataList);
           response.sendRedirect("QuetionsDemo.jsp");
           
           } finally {
//           factory.close();
           }
    }
}
    