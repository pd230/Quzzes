package servlet_pages;


import java.io.IOException;
import java.io.PrintWriter;


import org.hibernate.Session;
import org.hibernate.query.Query;

import entity.HibUtilQuiz;
import entity.UserData;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		HibUtilQuiz hibUtilQuiz = new HibUtilQuiz();
		UserData userData = new UserData();
		Session session = null;
		
//		accepting data From the signup form
		String name = request.getParameter("fname");
		String email = request.getParameter("email");
		String Uname = request.getParameter("Uname");
		String password = request.getParameter("password");
		
//		creating session
		try {
			session = HibUtilQuiz.getSessionFactory().openSession();
			session.getTransaction().begin();
			}catch(Exception e) {
				System.out.println("error : "+e);
			}
		
//		retrieving max id 
		String sql = "select max(id) from UserData ";
		Query<Integer> query = (Query<Integer>)session.createQuery(sql);
        Integer maxId = query.uniqueResult();

        int maxIdValue = (maxId != null) ? maxId.intValue() : 0; // Handle null case
        System.out.println("Max ID: " + maxIdValue);
		 
//		fetching data into database
		userData.setId(maxIdValue+1);
		userData.setName(name);
		userData.setEmail(email);
		userData.setUname(Uname);
		userData.setPassword(password);
		
		
		session.save(userData);
		session.getTransaction().commit();
	}

}
