<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Loan Type</title>
</head>
<body>
<h1 style="text-align: center;" >Add Loan Type</h1>
	<spr:form action="add-loan-type.htm" method="post" commandName="loanTypeMaster" >
	<table align="center" >
		<tr>
			<td>
				Loan Type:
			</td>
			<td>
				<spr:input path="loanType"/>
			</td>
		</tr>
		<tr>
			<td>
				Interest Rate:
			</td>
			<td>
				<spr:input path="rateOfInt"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="admin_home.jsp">Back</a>
			</td>
			<td>
				<input type="submit"  value="submit" >
			</td>
		</tr>
	</table>
	</spr:form>
</body>
</html>