<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
body {
	background-size: 100% 100%;
	height: 100vh;
	display: grid;
	place-content: center;
}

#div1 {
	border: 1px solid white;
	text-decoration: none;
	color: block;
	padding: 20px;
	width: 350px;
	opacity: .7;
	box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px,
		rgba(0, 0, 0, 0.3) 0px 8px 16px -8px;
}

a {
	border: 2px solid black;
	background-color: maroon;
	text-decoration: none;
	color: white;
	padding: 5px;
	position: relative;
	top: 0px;
	left: 130px;
}
#btn{
position relative;

}
</style>

</head>
<body>
	<div id="div1">
		<h1 style="text-decoration: underline; textalign: center">Admin
			Login</h1>
		<br>
		<form action="Adminlogin" method="post">
			<table>
				<tr>
					<td>Email</td>
					<td><input type="email" name="email" id="email"
						required="required"></td>
				</tr>

				<tr>
					<td>Password</td>
					<td><input type="password" name="password" id="password"
						required="required"></td>
</tr>

				<tr>
					<td><input id="btn" type="submit"></td>
				</tr>

				<tr>
					<td style="color: red">Not a User ?</td>
				</tr>
				<tr>
					<td><a href="AdminSignup.jsp">SignUp</a></td>
				</tr>
			</table>
		</form>

	</div>


	<script type="text/javascript">
	
	document.getElementById("email").addEventListener("input", () => {
	    let errormsg = document.getElementById("errormsgmail");
	    let emailValue = document.getElementById("email").value.trim(); 

	    if (emailValue === "") {
	        errormsg.style.display = "block";  
	    } else {
	        errormsg.style.display = "none"; 
	    }
	}, false);

	document.getElementById("password").addEventListener("input", () => {
	    let errormsg = document.getElementById("errormsgpassword");
	    let passwordValue = document.getElementById("password").value.trim(); // Get trimmed value

	    if (passwordValue === "") {
	        errormsg.style.display = "block";  
	    } else {
	        errormsg.style.display = "none";  
	    }
	}, false);

	
	<%String message = (String) request.getAttribute("message");%>
	<%if (message != null) {%>
	alert("<%=message%>");
	<%if (message.equals("Login Success")) {%>
	window.location.href="Adminhome.jsp";
	<%}%>
	<%}%>
		
	
	
	
	
	
	
	</script>
</body>
</html>