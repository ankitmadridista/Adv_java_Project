<%@page import="com.cdac.dto.LoanApply"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Application Details</title>
</head>
<body>

<% LoanApply la = (LoanApply)(request.getAttribute("loanDetails")); %>
<h1 style="text-align: center;" >Loan Application Details</h1>
	
	<table align="center" >
		<tr>
			<td>
				Customer Name:
			</td>
			<td>
				<%= la.getCustName() %>
			</td>
		</tr>
		<tr>
			<td>
				Amount:
			</td>
			<td>
				<%= la.getAmount() %>
			</td>
		</tr>
		<tr>
			<td>
				Tenure:
			</td>
			<td>
				<%= la.getTenure() %>months
			</td>
		</tr>
		<tr>
			<td>
				Monthly Salary:
			</td>
			<td>
				<%= la.getMonthlySalary() %>
			</td>
		</tr>
		<tr>
			<td>
				Apply date:
			</td>
			<td>
				<%= la.getApplyDate() %>
			</td>
		</tr>
		<tr>
			<td>
				Interest Rate:
			</td>
			<td>
				<%= la.getRateOfInt() %> %
			</td>
		</tr>
		<tr>
			<td>
				Loan Type:
			</td>
			<td>
				<%= la.getLoanType() %>
			</td>
		</tr>
		<tr>
			<td>
				Status:
			</td>
			<td>
				<%= la.getStatus() %>
			</td>
		</tr>
		<tr>
			<td>
				Monthly Salary:
			</td>
			<td>
				<%= la.getMonthlySalary() %>
			</td>
		</tr>
		
		<tr>
			<td>
				<a href="admin-view-apply.htm" >Back</a>
			</td>
			<td>
				<a href="approve-loan.htm?id=<%= la.getId() %>" >Approve </a>
			</td>
			<td>
				<a href="reject-loan.htm?id=<%= la.getId() %>" >Reject </a>
			</td>
		</tr>
	</table>
</body>
</html>