package servlet_pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import entity.HibUtilQuiz;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
		
		String Uname = request.getParameter("Uname");
		String password = request.getParameter("password");
		
		
		Session session = HibUtilQuiz.getSessionFactory().openSession();
		Transaction tx = session.getTransaction();
		
		String sql = " from UserData where Uname = :Uname  and password = :password";
		Query query = session.createQuery(sql);
		query.setParameter("Uname", Uname);
		query.setParameter("password", password);
		
		List<Object[]> list = query.list();
		
		HttpSession httpsession = request.getSession();
		
		
        if(list != null){
        	httpsession.setAttribute("Uname", Uname);
        	httpsession.setAttribute("password", password);
        	response.sendRedirect("Home.jsp");
        }else {
        	response.sendRedirect("Login.jsp");
        }
        
		
	}

}
