<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="company.Company_Bean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="admin.AdminModels" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Total Jobs</title>
</head>
<body>
<h1>list of all jobs</h1>
<table border="1px solid black">
<tr><th>Job Name</th><th>Company Name</th></tr>
<c:forEach var="item" items="${sessionScope.alljobs}">
<tr><td><c:out value="${item.jobname}"/></td><td><c:out value="${item.company_name}"/><td><td><a href="DeleteJobs?a=${item.jobid}">Delete</a></td></tr>
</c:forEach>
</table>
</body>
</html>