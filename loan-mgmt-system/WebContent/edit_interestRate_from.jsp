<%@page import="com.cdac.dto.LoanTypeMaster"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Type list</title>
</head>
<body>
<h1 style="text-align: center;" >Welcome Admin</h1>
<h2 style="text-align: center;">Loan Type</h2>

<spr:form action="update-interest-rate.htm" method="post" commandName="loanTypeMaster" >
<table align="center" >
		
		<tr>
			<td>
				
			</td>
			<td>
				<spr:hidden path="loanType"/>
			</td>		
		</tr>
		<tr>
			<td>
				Interest Rate
			</td>
			<td>
				<spr:input path="rateOfInt"/>
			</td>		
		</tr>		
		<tr>
			<td>
				<input type="submit" value="Update Interest:" >
			</td>
			<td>
				<a href="show-loan-type.htm" >Back</a>
			</td>
		</tr>

</table>
</spr:form>

</body>
</html>