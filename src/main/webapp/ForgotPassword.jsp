<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="css_files/Login.css">
</head>
<body style="background-color: #f2f2f2;">
    <div style="width: 400px; margin: auto; margin-top: 100px; padding: 20px; background: white; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1);">
        <h2>Forgot Password</h2>
        <form action="ForgotPassword" method="post">
            <label>Enter your username or email:</label><br>
            <input type="text" name="usernameOrEmail" required style="width: 100%; padding: 10px;"><br><br>
            <input type="submit" value="Reset Password" style="padding: 10px 20px;">
            <input type="button" value="Back to Login" onclick="window.location.href='Login.jsp'" style="padding: 10px 20px;">
        </form>
    </div>
</body>
</html>
