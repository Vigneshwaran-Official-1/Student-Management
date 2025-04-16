<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	
	
	background-size: 100% 100%;
	height: 100vh;
	display: grid;
	place-content: center;
}

#div {
	border: 3px solid black;
	color: block;
	padding: 20px;
	width: 500px;
	height: 300px;
	box-shadow: 3px 3px 20px 8px silver;
	opacity: .9;
}

form {
	position: relative;
	top: 0px;
	left: 100px;
	width: 300px;
	padding: 30px;
}
</style>
</head>
<body>
<div id="div">
		<h1 style="text-decoration: underline; text-align: center;">Add
			Student</h1>

		<form action="addstudent" method="post">
			<table>
				<tr>
					<td>Id</td>
					<td><input type="Number" name="id"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Tamil</td>
					<td><input type="text" name="tamil"></td>
				</tr>
				<tr>
					<td>English</td>
					<td><input type="text" name="english"></td>
				</tr>
				<tr>
					<td>Physics</td>
					<td><input type="text" name="physics"></td>
				</tr>
				<tr>
					<td>Chemistry</td>
					<td><input type="text" name="chemistry"></td>
				</tr>
				<tr>
					<td>Maths</td>
					<td><input type="text" name="maths"></td>
				</tr>
				<tr>
					<td><input type="submit"
						style="position: relative; left: 90px; top: 15px;"></td>
				</tr>




			</table>

		</form>
	</div>
	<script type="text/javascript">
	<%
	String msg = (String) request.getAttribute("msg");
	%>

	<%
	if (msg != null) {
	%>
	alert("<%=msg%>" ); 
	window.location.href = "adminhome.jsp";


	<%
	}
	%>
	</script>

</body>
</html>