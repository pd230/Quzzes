<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="services.CheckUser" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quizzes - Home page</title>
</head>
<body>

<% 
      String username = (String)session.getAttribute("Uname");
      String password = (String)session.getAttribute("password");
      
      if(!CheckUser.isAvailableInDb(username, password)){
    	  response.sendRedirect("Login.jsp");
    	  out.print("Login error");
      }
%>

<h6>This is a home page</h6>

</body>
</html>