package servlet_pages;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.json.gson.GsonFactory;

import entity.UserData;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import services.HibUtilQuiz;

public class GoogleLogin extends HttpServlet {
    private static final String CLIENT_ID = "YOUR_GOOGLE_CLIENT_ID";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String credential = request.getParameter("credential");

        try {
            GoogleIdTokenVerifier verifier = new GoogleIdTokenVerifier.Builder(
                    GoogleNetHttpTransport.newTrustedTransport(), GsonFactory.getDefaultInstance())
                    .setAudience(Collections.singletonList(CLIENT_ID))
                    .build();

            GoogleIdToken idToken = verifier.verify(credential);

            if (idToken != null) {
                GoogleIdToken.Payload payload = idToken.getPayload();
                String email = payload.getEmail();
                String name = (String) payload.get("name");

                Session hibSession = HibUtilQuiz.getSessionFactory().openSession();
                hibSession.beginTransaction();

                Query<UserData> query = hibSession.createQuery("from UserData where email = :email", UserData.class);
                query.setParameter("email", email);
                List<UserData> users = query.list();

                UserData user;
                if (users.isEmpty()) {
                    // New User
                    Query<Integer> idQuery = hibSession.createQuery("select max(id) from UserData", Integer.class);
                    Integer maxId = idQuery.uniqueResult();
                    int newId = (maxId != null) ? maxId + 1 : 1;

                    user = new UserData();
                    user.setId(newId);
                    user.setName(name);
                    user.setEmail(email);
                    user.setUname(email);  // set email as username
                    user.setPassword("google"); // dummy password

                    hibSession.save(user);
                } else {
                    user = users.get(0);
                }

                hibSession.getTransaction().commit();

                HttpSession session = request.getSession();
                session.setAttribute("name", user.getName());
                session.setAttribute("email", user.getEmail());
                session.setAttribute("Uname", user.getUname());
                session.setAttribute("Uid", user.getId());

                response.sendRedirect("Home.jsp");

            } else {
                response.sendRedirect("Login.jsp?error=token_invalid");
            }
        } catch (Exception e) {
            throw new ServletException("Google Login failed", e);
        }
    }
}
