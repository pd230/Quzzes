<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width = device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css_files/Login.css">
    <title>Sign Up</title>
</head>
<body>
    <div id="labels">
        <label id="l1"><h1>Sign Up Form</h1></label>
    </div>
    <div id="form">
            <div>
                <form id="form1" action="SignIn">
                    <table>
                        <tr>
                            <th><label>Enter Fullname :</label></th>
                            <td><input type="text" name="fname"  required pattern="[A-za-z\s]+" title="only alphabates"></td>
                        </tr>
                        <tr>
                            <th><label>Enter Email :</label></th>
                            <td><input type="email" name="email" required></td>
                        </tr>
                        <tr>
                            <th><label>Enter Username :</label></th>
                            <td><input type="text" name="Uname" required></td>
                        </tr>
                        <tr>
                            <th><label>Enter password :</label></th>
                            <td><input type="password" name="password" minlength="4" maxlength="4" required></td>
                        </tr>
                        <tr style="text-align: center;">
                            <td colspan="2"><input type="submit" value="SignUp" name="submit" id="button" onclick="window.location.href='Home.jsp'">
                            <input type="Reset" value="Reset " name="Reset" id="button">
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