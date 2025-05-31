package servlet_pages;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import services.ScoreDataServise;

/**
 * Servlet implementation class UserScoreDB
 */
public class UserScoreDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ScoreDataServise scoreDataServise = new ScoreDataServise();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//	Retrieving frontEnd data
		String Score = request.getParameter("score");
//		int Uid = Integer.parseInt(request.getParameter("UserId"));
		
		HttpSession httpSession = request.getSession();
		String type = (String) httpSession.getAttribute("type");
		
		System.out.println("Score : "+ Score);
		System.out.println("type : "+ type);
		
        //	Adding data to Database
		scoreDataServise.createScoreDatas(Score, type);
		
		httpSession.setAttribute("Score", Score);
		httpSession.setAttribute("type", type);
		
		
		response.sendRedirect("Certificate.jsp");
	}

}
