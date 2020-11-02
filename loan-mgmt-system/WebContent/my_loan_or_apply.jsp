<%@page import="java.util.List"%>
<%@page import="com.cdac.dto.LoanApply"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Loans / Apply Loan</title>
</head>
<body>
<h1 style="text-align: center;" >Welcome</h1><br><br>

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
		<% List<LoanApply> li =(List<LoanApply>)request.getAttribute("list");
		
		for( LoanApply l : li) { %>
		
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
<br>
<a href="loan-apply-form.htm" >Apply for a loan</a><br><br>
<a href="home.jsp" >Back</a>
</body>
</html>