package servlet_pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import entity.HibUtilQuiz;
import entity.UserData;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("Uname");
		String password = request.getParameter("password");
		
		
		Session session = HibUtilQuiz.getSessionFactory().openSession();
		Transaction tx = session.getTransaction();
		
		String sql = "Select password,Uname,id from UserData";
		Query query = session.createQuery(sql);
		List<Object[]> list = query.list();
		
		for(Object[] i:list) {
			while(username.matches((String) i[0]) && password.matches((String) i[1]));
			{
				out.println("successful ! ");
				out.println();
				out.println(i[0]+" "+i[1]+" "+i[2]);
				break;
			}
		}
		
	}

}
