package servlet_pages;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import services.HibUtilQuiz;

import java.io.IOException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import entity.UserData;


public class ForgotPassword1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Uname = request.getParameter("usernameOrEmail");
		
		
		Session session = HibUtilQuiz.getSessionFactory().openSession();
		session.getTransaction();
		
		String sql = "from UserData where Uname = :unameOrEmail or email = :unameOrEmail";
		Query<UserData> query = session.createQuery(sql);
		query.setParameter("unameOrEmail", Uname);
		
		
		List<UserData> list = query.list();
		
//		session which is used through out the project
		HttpSession httpsession = request.getSession();
		
		
        if(list != null){
        	 UserData user = list.get(0);
             httpsession.setAttribute("Uname", Uname);
             httpsession.setAttribute("password", user.getPassword());
             httpsession.setAttribute("name", user.getName());
             httpsession.setAttribute("email", user.getEmail());
             httpsession.setAttribute("Uid", user.getId());
      
             request.setAttribute("message", "A password reset link has been sent to your email.");
        } else {
            request.setAttribute("message", "User not found. Please check and try again.");
        }

        RequestDispatcher rd = request.getRequestDispatcher("forgotPasswordResult.jsp");
        rd.forward(request, response);
        

       
    }

}
