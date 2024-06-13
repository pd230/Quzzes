
//for creating database

//create database QuizzData;
//use QuizzData;
//create table UserData(id int not null,name varchar(40), email varchar(30), Uname varchar(10),
//		password varchar(8), primary key(id), UNIQUE(Uname,name,email,password) );
//select * from UserData;


package servlet_pages;


import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.query.Query;

import entity.HibUtilQuiz;
import entity.UserData;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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
		
		HttpSession httpsession = request.getSession();
		RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
		httpsession.setAttribute(Uname, password);
		rd.forward(request, response);
		
		
		
		session.save(userData);
		session.getTransaction().commit();
	}

}
