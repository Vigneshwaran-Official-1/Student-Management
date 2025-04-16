<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin SignUp</title>

<style>
body {
	background-image:
		url("");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	height: 100vh;
	display: grid;
	place-content: center;
}
#parent {
	border: 1px solid black;
	
	text-decoration: none;
	color: silver;
	padding: 30px;
	width: 350px;
	opacity: .9;
	box-shadow: 3px 3px 25px 10px silver;
	
}

#submit {
	position: relative;
	top: 10px;
	left: 140px;
}
</style>
</head>
<body>
	<div id="parent">
		<center>
			<h1 style="text-decoration: underline;">Admin Signup</h1>
		</center>
		<br>

		<form action="Adminsignup1" method="post">
			<table>
				<tr>
					<td>Id</td>
					<td><input type="Number" name="id" required="required"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" required="required"></td>
				</tr>
				<tr>
					<td>Contact</td>
					<td><input type="tel" name="contact" required="required"
						pattern="[6-9]\d{9}"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" required="required"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" id="password"
						required="required"></td>
				</tr>
				<tr>
					<td>Confirm Password</td>
					<td><input type="password" name="repassword" id="repassword"
						required="required"></td>
				</tr>
			</table>
			<p style="display: none; color: olive; font-weight: bolder;"
				id="password1">Password and confirm Password is matched!</p>
			<p style="display: none; color: red;" id="repassword1">Password and
				confirm Password is not matched!</p>
			<input type="submit" id="submit">

		</form>

	</div>
	
	
  <% String message = (String) request.getAttribute("message"); %>
  <% if (message != null) { %>
      alert("<%= message %>");
      <% if (message.equals("Admin Signup Success!!")) { %>
          window.location.href = "Adminlogin.jsp";
      <% } %>
  <% } %>


</body>
</html>