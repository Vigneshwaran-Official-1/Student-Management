<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
<h2>Employee Data</h2>

<label for="email">Email:</label>
<input type="text" name ="email" required>
<br>
<br>
<label for="password">Password:</label>
<input type="text" name ="password" required >
<br>
<br>
<label for="password">Re-EnterPassword:</label>
<input type="text" name ="password" required >
<br>
<br>
<input type="submit" value="submit" required>
<p>Not a user?</p>
<button type="submit"><a href="AdminSignup">Sign-Up</a></button>

</form>

<% %>
</body>
</html>