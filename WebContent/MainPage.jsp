<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styles.css" rel="stylesheet">
<link href="theme.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In</title>
<script type="text/javascript">
	function func() {
		var user = document.getElementById("user").value;
		var pass = document.getElementById("pass").value;
		var status=false;
		if (user == null || pass == null) {
			alert('Enter username and password');
		} else if (user == "admin" && pass == "admin") {

			/* window.open("DashBoard.jsp"); */
			status= true;
		} else {
			alert('Invalid username and password');
		}
		return status;
	}
</script>

</head>
<body>
	<div class="container">
		<H4 class="vzh4">Monitoring Services</H4>
		<H4 class="vzh4">Login Form</H4>

		<form action="DashBoard.jsp" onsubmit=" return func()">
			<table>
				<tr>
					<td class="vzh5">Username :</td>
					<td><input name="username" size=15 type="text" id="user"
						class="vztext" /></td>
				</tr>
				<tr>
					<td class="vzh5">Password :</td>
					<td><input name="password" size=15 type="password" id="pass"
						class="vztext" /></td>
				</tr>
			</table>
			<input type="submit" value="login"  class="vzbtn"
				style="margin-left: 186px; margin-top: 20px;">
		</form>

	</div>
</body>
</html>