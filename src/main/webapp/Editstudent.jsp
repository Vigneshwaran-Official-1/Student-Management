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
	height: 300px; opacity : .9;
	box-shadow: 3px 3px 15px 10px silver;
	opacity: .7;
}

#div table {
	position: relative;
	top: 30px;
	left: 130px;
}
</style>

</head>
<body>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	int tamil=Integer.parseInt(request.getParameter("tamil"));
	int english=Integer.parseInt(request.getParameter("english"));
	int physics = Integer.parseInt(request.getParameter("physics"));
	int chemistry = Integer.parseInt(request.getParameter("chemistry"));
	int maths = Integer.parseInt(request.getParameter("maths"));	
	%>
	<div id="div">

		<h1 style="text-decoration: underline; text-align: center;">Update
			Student data</h1>
		<form action="editstudentdetails" method="post" id="form">
			<table>
				<tr>
					<td>Id</td>
					<td><input type="text" name="id" readonly="readonly"
						value="<%=id%>"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" value="<%=name%>"></td>
				</tr>
				<tr>
					<td>Tamil</td>
					<td><input type="text" name="tamil" value="<%=tamil%>"></td>
				</tr>
				<tr>
					<td>English</td>
					<td><input type="text" name="english" value="<%=english%>"></td>
				</tr>
				<tr>
					<td>Physics</td>
					<td><input type="text" name="physics" value="<%=physics%>"></td>
				</tr>
				<tr>
					<td>Chemistry</td>
					<td><input type="text" name="chemistry"
						value="<%=chemistry%>"></td>
				</tr>
				<tr>
					<td>Maths</td>
					<td><input type="text" name="maths" value="<%=maths%>"></td>
				</tr>
				<tr>
					<td><input type="submit"
						style="position: relative; left: 70px; top: 10px;"></td>
				</tr>




			</table>

		</form>
	</div>
</body>
</html>