<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="AdminSign-up" method="post">
		<h2>Admin Data</h2>
		
		<label for="id1"> Id:</label> 
		<input type="text" name="id1" required>
		<br> 
		<br>
		<label for="name">Name:</label> 
		<input type="text" name="name" required>
		 <br> 
		 <br>
		<label for="email"> Email:</label> 
		<input type="text" name="email" required>
		<br> 
		<br> 
		<label for="pho">Contact:</label> 
		<input type="text" name="pho" required>
		<br> 
		<br> 
		<label for="password">Password:</label> 
		<input type="text" name="password " required>
		<br> 
		<br> 
		<label for="repassword">Re-Enter Password:</label> 
		<input type="text" name="repassword" required>
		<br> 
		<br> 
		<input type="submit" value="submit" required>

	</form>
</body>
</html>