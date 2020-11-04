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
<% List<LoanApply> li1 =(List<LoanApply>)request.getAttribute("list1");
	if(li1.size() > 0 ) {
%>
		
<h3>My Pending Loans</h3>
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
		<%
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
				<%= l.getRateOfInt() %>%
			</td>
			<td>
				<%=l.getApplyDate() %>
			</td>
			<td>
				<%=l.getStatus() %>
			</td>
		</tr>

<%} }%>
</table>
<%
List<LoanApply> li2 =(List<LoanApply>)request.getAttribute("list2");
if(li2.size() > 0 ){
%>
<h3>My Approved Loans</h3>
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
		<%
		
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
				<a href="show-loan-details.htm?id=<%= l.getId() %>">View</a>
			</td>
		</tr>

<%} }%>
</table>
<% List<LoanApply> li3 =(List<LoanApply>)request.getAttribute("list3");
if( li3.size() > 0){ 
%>
<h3>My Rejected Loans</h3>
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
		<%
		
		for( LoanApply l : li3) { %>
		
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

<%} } %>
</table>
<br>
<a href="loan-apply-form.htm" >Apply for a loan</a><br><br>
<a href="home.jsp" >Back</a>
</body>
</html>