<%@page import="java.util.List"%>
<%@page import="com.cdac.dto.LoanApply"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Loan Status</title>
</head>
<body>
<h1 style="text-align: center;" >Admin Loan Status</h1>
<h4>Loan Status</h4>
<table align="center" >
		
		<tr>
			<th>
				Id:
			</th>
			<th>
				Cust Name
			</th>
			<th>
				Loan Type
			</th>
			<th>
				Amount
			</th>
			<th>
				Tenure
			</th>
			<th>
				Int rate
			</th>
			<th>
				Apply Date
			</th>
			<th>
				Status
			</th>		
		</tr>
		<% List<LoanApply> li1 =(List<LoanApply>)request.getAttribute("list1");
		
		for( LoanApply l : li1) { %>
		
		<tr>
			<td>
				<%=l.getId() %>
			</td>
			<td>
				<%=l.getCustName() %>
			</td>
			<td>
				<%=l.getLoanType() %>
			</td>
			<td>
				<%=l.getAmount() %>
			</td>
			<td>
				<%=l.getTenure() %>	
			</td>
			<td>
				<%= l.getRateOfInt() %>	%
			</td>
			<td>
				<%=l.getApplyDate() %>
			</td>
			<td>
				<a href="view-loan-status.htm?id=<%=l.getId() %>"> View </a>
			</td>
		</tr>

<%} %>
</table>
<br>
<h4>View Repaid</h4>
<table align="center" >
		
		<tr>
			<th>
				Id:
			</th>
			<th>
				Cust Name
			</th>
			<th>
				Loan Type
			</th>
			<th>
				Amount
			</th>
			<th>
				Tenure
			</th>
			<th>
				Int rate
			</th>
			<th>
				Apply Date
			</th>
			<th>
				Status
			</th>		
		</tr>
		<% List<LoanApply> li2 =(List<LoanApply>)request.getAttribute("list2");
		
		for( LoanApply l : li2) { %>
		
		<tr>
			<td>
				<%=l.getId() %>
			</td>
			<td>
				<%=l.getCustName() %>
			</td>
			<td>
				<%=l.getLoanType() %>
			</td>
			<td>
				<%=l.getAmount() %>
			</td>
			<td>
				<%=l.getTenure() %>	
			</td>
			<td>
				<%= l.getRateOfInt() %>%
			</td>
			<td>
				<%=l.getApplyDate() %>
			</td>
			<td>
				<%=l.getStatus() %>
			</td>
		</tr>

<%} %>
</table>
<a href="admin_home.jsp" >Back</a>
</body>
</html>