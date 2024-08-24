package servlet_pages;

import java.io.IOException;
import java.util.ArrayList;
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
    	
    	String type = (String) request.getParameter("lang");
    	String typeToComp = null;
        try {
//        	list of data
        	List<Object[]> dataList = quizService.getQuestions();
        	
            List<Object[]> SelectedTypeQue = new ArrayList<>();
            
        	
        	for(Object[] arr : dataList) {
        	   typeToComp = (String) arr[5];
        	   if(type.equals(typeToComp)) {
        		   SelectedTypeQue.add(arr);
        	   }
        	}
        	
        	System.out.println("list of Questions : ");
        	
        	for(Object[] selected : SelectedTypeQue) {
        		System.out.println(selected[7]+" "+selected[1]+" "+selected[5]);
        	}
        	
        	
        	
           // Store data in session
           HttpSession httpsession = request.getSession();
           httpsession.setAttribute("type", type);
           httpsession.setAttribute("SelectedTypeQue", SelectedTypeQue);
           response.sendRedirect("QuetionsDemo.jsp");
           
           } finally {
//           factory.close();
           }
    }
}
    