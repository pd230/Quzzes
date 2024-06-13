<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width = device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css_files/Login.css">
    <title>Document</title>
</head>
<body>
    <div id="labels">
        <label id="l1"><h1>Login Form</h1></label>
    </div>
    <div id="form">
            <div>
                <form id="form1" action="Login">
                    <table>
                        <tr>
                            <th><label>Enter Username:</label></th>
                            <td><input type="text" name="Uname" required></td>
                        </tr>
                        <tr>
                            <th><label>Enter password:</label></th>
                            <td><input type="password" name="password" minlength="8" required></td>
                        </tr>
                        <tr style="text-align: center;">
                            <td colspan="2"><input type="submit" value="Login" name="submit" id="button">
                            <input type="Reset" value="Reset" name="Reset" id="button">
                            <input type="submit" value="Back" name="back" id="button" onclick="window.location.href='index.jsp'"></td>
                        </tr>

                    </table>        

                </form>
            </div>
                
            <div>
               <img src="images/admin.png" style="height: 300px; column-gap: 0; margin-left: -100px; margin-top: 60px;">
            </div>
   </div>
</body>
</html>