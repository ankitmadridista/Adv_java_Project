<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMI Calc Form</title>
</head>
<body>
	<spr:form action="cust-reg.htm" method="post" commandName="customer" >
	<table align="center" >
		<tr>
			<td>
				Loan Amount:
			</td>
			<td>
				<spr:input path="loanAmount"/>
			</td>
		</tr>
		<tr>
		<td>
			Loan Type:
		</td>
		<td>
		<spr:select path="loanType">
					<spr:option value="house">House</spr:option>
					<spr:option value="car">Car</spr:option>
					<spr:option value="Personal">Personal</spr:option>
				</spr:select>
		</td>
		</tr>
		<tr>
			<td>
				Rate of Interest:
			</td>
			<td>
				<spr:input path="interestRate"/>
			</td>
		</tr>
		<tr>
			<td>
				Tenure (in years):
			</td>
			<td>
				<spr:input path="loanYears"/>
			</td>
		</tr>
		
		<tr>
			<td>
				<a href="index.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Register" >
			</td>
		</tr>
	</table>
	</spr:form>
</body>
</html>