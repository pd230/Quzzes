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
    <div class="flex flex-col justify-center items-center mt-10 shadow-md rounded p-16 bg-white">
        <h1 class="text-4xl font-bold mb-4">User Profile</h1>
        <div >
            <% 
                String name = (String) session.getAttribute("name");
                String email = (String) session.getAttribute("email");
                if (name != null && email != null) {
            %>
            <p><strong>Name:</strong> <%= name %></p>
            <p><strong>Email:</strong> <%= email %></p>
            <% } else { %>
            <p>User details are not available.</p>
            <% } %>
        </div>
    </div>
</body>
</html>
