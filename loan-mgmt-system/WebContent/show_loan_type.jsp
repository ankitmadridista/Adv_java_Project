<%@page import="com.cdac.dto.LoanTypeMaster"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Type list</title>
</head>
<body>
<h1 style="text-align: center;" >Welcome Admin</h1>
<h2 style="text-align: center;">Loan Type</h2>
<table align="center" >
		
		<tr>
			<th>
				Loan Type
			</th>
			<th>
				Interest Rate
			</th>
			<th>
				Status
			</th>
			
		</tr>
		<% List<LoanTypeMaster> li =(List<LoanTypeMaster>)request.getAttribute("list");
		
		for( LoanTypeMaster l : li) { %>
		
		<tr>
			<td>
				<%=l.getLoanType() %>
			</td>
			<td>
				<%=l.getRateOfInt() %>
			</td>
		
			<td>
				<a href="edit-loan-type.htm?type=<%=l.getLoanType() %>"> Edit </a>
				<a href="delete-loan-type.htm?type=<%=l.getLoanType() %>"> Delete </a>
			</td>
		</tr>

<%} %>
</table>

<a href="admin_home.jsp" >Back</a>
</body>
</html>