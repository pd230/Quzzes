//
//<!-- filter>
//<display-name>LoginFilter</display-name>
//<filter-name>LoginFilter</filter-name>
//<filter-class>entity.LoginFilter</filter-class>
//</filter-->
//<!-- filter-mapping>
//<filter-name>LoginFilter</filter-name>
//<url-pattern>/Home.jsp</url-pattern>
//</filter-mapping-->

package entity;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginFilter extends HttpFilter implements Filter {
       
    public LoginFilter() {
        super();
        // TODO Auto-generated constructor stub
    }

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req  = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		HttpSession httpSession = req.getSession(false);
		
		if(httpSession == null || httpSession.getAttribute("Uname")== null || httpSession.getAttribute("password")== null ) {
			resp.sendRedirect("Login.jsp");
		}
		else {
		chain.doFilter(request, response);
		}
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
