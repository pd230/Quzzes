<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Profile Page</title>
	<link rel="stylesheet" type="text/css" href="css/tailwind.css">
</head>
<body>
    <%
       String name = (String) session.getAttribute("name");
    %>
    
    <%=name %>
</body>
</html>
