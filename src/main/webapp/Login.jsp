<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<script src="https://accounts.google.com/gsi/client" async defer></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width = device-width, initial-scale=1.0">
<link rel="stylesheet" href="css_files/Login.css">
<title>Login form</title>
</head>
<body
	style="background-image: url('images/bg2.jpg'); background-position: center; background-repeat: no-repeat; background-size: cover;">


	<div id="main-body"
		style="display: flex; flex-direction: cols; width: 100%; height: 100%;">
		<div
			style="position: relative; background-color: rgb(63, 192, 244, 0.5); flex: 1; background-repeat: no-repeat; background-size: cover; border-radius: 0 50% 50% 0; box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.20);">
			<h1
				style="position: absolute; height: full; width: full; margin-top: 30%; margin-left: 10%; font-size: 60px; justyfy-content: center">
				<strong>Welcome Back</strong>
			</h1>
			<br>
			<h3 style="position: absolute; height: full; width: full; margin-left: 2%; margin-top: 40%; font-size: 20px; flont-weight: solid; justyfy-content: center; align-items: center">Before
				you begin, take a deep breath and remind yourself you're not here to
				prove anything to the world, but to yourself.</h3>
		</div>

		<div
			style="display: flex; flex-direction: column; width: 60%; height: 100%;">
			<div id="labels">
				<h1>Login Form</h1>
			</div>

			<div id="form">
				<form id="form1" action="Login" class="rounded:lg" style="padding: 60px;">
					<table>
						<tr>
							<th><label>Enter Username:</label></th>
							<td><input type="text" name="Uname" required
								title="Enter valid Username"></td>
						</tr>
						<tr>
							<th><label>Enter password:</label></th>
							<td><input type="password" name="password" minlength="4"
								maxlength="4" required title="Enter valid password"></td>
						</tr>
						<tr style="text-align: center;">
							<td colspan="2"><input type="submit" value="Login"
								name="submit" id="button"> <input type="reset"
								value="Reset" name="Reset" id="button"> <input
								type="button" value="Back" name="back" id="button"
								onclick="window.location.href='index.jsp'"> <br>
							<br>
							<a href="ForgotPassword.jsp"
								style="color: blue; text-decoration: underline;">Forgot
									Password?</a></td>
						</tr>
						<tr>
							<td><div id="g_id_onload"
									data-client_id="669475595919-tk49nuc6o172mp9jl3lrb25k0sqio1b4.apps.googleusercontent.com"
									data-callback="handleCredentialResponse"></div>

								<div class="g_id_signin" data-type="standard" data-size="large"
									data-theme="outline" data-text="sign_in_with"
									data-shape="rectangular"  style="margin-left: 50px"></div></td>
						</tr>

					</table>

				</form>

				<img src="images/admin.png"
					style="height: 300px; margin-left: 500px; margin-top: -250px;">
			</div>
		</div>


<script>
function handleCredentialResponse(response) {
    // Send JWT to your backend servlet
    fetch("GoogleLogin", {
        method: "POST",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        body: "credential=" + encodeURIComponent(response.credential)
    }).then(res => {
        if (res.redirected) {
            window.location.href = res.url;  // redirect to Home.jsp
        }
    });
}
</script>


	</div>

</body>
</html>