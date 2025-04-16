<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Database Management</title>

<style>
body {
	background-size: 100% 100%;
	height: 100vh;
	place-content: center;
}

a {
	border: 1px solid;
	position: relative;
	left: 160px;
	top: 20px;
	text-decoration: none;
	color: block;
	padding: 10px;
	line-height: 50px;
	box-shadow: 1px 1px 4px 1px olive;
}

div {
	transform: scale(1.2, 1.2);
	border: 3px solid white;
	width: 400px;
	padding: 20px;
	padding-bottom: 80px;
	opacity: .8;
	box-shadow: 3px 3px 20px 10px silver;
	position: relative;
	left:290px;
}

div h1 {
	text-align: center;
	color: block;
	text-decoration: underline;
}
</style>
</head>
<body>
	<div>
		<h1>Student Management</h1>
		<a href="Adminlogin.jsp">Admin</a><br> <br> <a
			href="studentlogin.jsp">Student</a>
	</div>


</body>
</html>