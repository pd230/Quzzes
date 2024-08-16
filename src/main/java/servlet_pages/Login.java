package servlet_pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import entity.UserData;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import services.HibUtilQuiz;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		
		String Uname = request.getParameter("Uname");
		String password = request.getParameter("password");
		
		
		
		Session session = HibUtilQuiz.getSessionFactory().openSession();
		session.getTransaction();
		
		String sql = " from UserData where Uname = :Uname and password = :password";
		Query query = session.createQuery(sql);
		query.setParameter("Uname", Uname);
		query.setParameter("password", password);
		
		
		List<UserData> list = query.list();
		
//		session which is used through out the project
		HttpSession httpsession = request.getSession();
		
		
        if(list != null){
        	 UserData user = list.get(0);
             httpsession.setAttribute("Uname", Uname);
             httpsession.setAttribute("password", password);
             httpsession.setAttribute("name", user.getName());
             httpsession.setAttribute("email", user.getEmail());
      
        	response.sendRedirect("Home.jsp");
        }else {
        	response.sendRedirect("Login.jsp?error=true");
        }
        
		
	}

}
