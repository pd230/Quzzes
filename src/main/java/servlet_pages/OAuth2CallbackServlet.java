package servlet_pages;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/oauth2callback")
public class OAuth2CallbackServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String code = request.getParameter("code");

        if (code == null) {
            response.getWriter().println("Authorization code not found!");
            return;
        }

        // Step 1: Exchange authorization code for access token
        // (This requires sending a POST request to Google OAuth token endpoint)

        // Step 2: Use token to fetch user info (optional)

        // Step 3: Redirect to your Home page
        response.sendRedirect("Quizzes/Home.jsp");
    }
}
