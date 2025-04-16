<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>

<%@page import="StudentDAO.StudentDatabase"%>
<%@page import="StudentDTO.StudentDetails"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminHome </title>
<style type="text/css">
body {
	background-image: url("");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	height: 100vh;
	display: grid;
	place-content: center;
}

#div {
	border: 3px solid black;
	color: white;
	padding: 50px;
	width: 500px;
	opacity: .9;
	box-shadow: 3px 3px 25px 10px silver;
}

table a {
	text-decoration: none;
	color: red;
}

table, td, th {
	border: 1px solid block;
	text-align: center;
	border-collapse: collapse;
	padding: 5px;
	color: block;
}

th {
	color: block;
	font-weight: bolder;
}

#divtable {
	position: relative;
	top: 30px;
	left: 50px;
}

h1 {
	text-align: center;
	text-decoration: underline;
	color: block;
}

#addstu {
	background-color:gray;
	border: 2px solid block;
	text-decoration: none;
	position: relative;
	left: 50px;
	top: 60px;
	width: 100px;
	padding: 10px;
	width: 100px;
}

#addstu a {
	margin-left: 7px;
	text-decoration: none;
	color: blue;
}

#stulogout {
	background-color:gray;
	border: 2px solid block;
	position: relative;
	top: 20px;
	left: 350px;
	width: 60px;
	padding: 10px;
}

#div a {
	margin-left: 10px;
	text-decoration: none;
	color: gray;
}

#stulogout a {
	margin-left: 7px;
	text-decoration: none;
	color: blue;
}
</style>

</head>
<body>
	<div id="table1">
		<table>
			<h1>Admin Home Page</h1>
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Tamil</th>
					<th>English</th>
					<th>Physics</th>
					<th>Chemistry</th>
					<th>Maths</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>

			<tbody>
				<%
				List<StudentDetails> studentlist = StudentDatabase.findAllStudent();
				for (StudentDetails s : studentlist) {
				%>
				<tr>
					<td><%=s.getId()%></td>
					<td><%=s.getName()%></td>
					<td><%=s.getTamil()%></td>
					<td><%=s.getEnglish()%></td>
					<td><%=s.getPhysics()%></td>
					<td><%=s.getChemistry()%></td>
					<td><%=s.getMaths()%></td>
					<td><a
						href="Editstudent.jsp?id=<%=s.getId()%>&name=<%=s.getName()%>&tamil=<%=s.getTamil()%>&english=<%=s.getEnglish()%>&physics=<%=s.getPhysics()%>&chemistry=<%=s.getChemistry()%>&maths=<%=s.getMaths()%>"
						style="color: olive;">Edit</a></td>
					<td><a  href="delete?id=<%=s.getId()%>"
						style="color: red;" onclick="return confirmdelete();">Delete</a></td>

				</tr>
				<%
				}
				%>
			</tbody>

		</table>
	</div>
	<div id="addstu">
		<a href="Addstudent.jsp">AddStudent</a>
	</div>
	<div id="stulogout">
		<a href="index.jsp">Logout</a>
	</div>
	
</body>
</html>