<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page import="company.Company_Bean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="admin.TotalParticularJobs" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Total Particular Jobs</title>
<style>
.row{
	padding-left: 50%;
}
.main-nav li{
	display: inline-block;
	list-style: none;
	margin-top: 30px;
}

/*.main-nav li{
	display: inline-block;
}*/

.main-nav li a{
	color:blue;
	text-decoration: none;
	padding: 5px 20px;
	font-family: Calibri;
	border: 2px solid green;
	border-radius: 10px;
	margin-top:5px;
}
.main-nav li a:hover{
	border: 2px solid white;
	border-radius: 10px;
	background-color: darkorange;
	transition: all 0.5s ease-in;
}
table {
  border-collapse: collapse;
}

table, td, th {
  border: 3px solid black;
  font-size:30px;
}
</style>
</head>
<body>
<header>
		
		<div class="row">
			
			<ul class="main-nav">
				<li><a href="company-profile.jsp">Home</a></li>
				<li><a href="JobPost.jsp">Post a Job</a></li>
				<li><a href="login.jsp">Log out</a></li>
			</ul>

		</div>
<table align="center" width="600">
<tr><th>Job Name</th><th>Salary</th></tr>
<c:forEach var="item" items="${sessionScope.allpjobs}">
<tr><td><c:out value="${item.jobname}"></c:out></td><td><c:out value="${item.salary}"></c:out></td></tr>
</c:forEach>
</table>
</header>
</body>
</html>