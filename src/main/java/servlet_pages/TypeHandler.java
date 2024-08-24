package servlet_pages;

import java.io.BufferedReader;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TypeHandler
 */
public class TypeHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BufferedReader br = request.getReader();
		
		StringBuilder sb = new StringBuilder();
		
		String line = null;
		while( (line = br.readLine())!=null) {
			sb.append(line);
		}
	}

}
