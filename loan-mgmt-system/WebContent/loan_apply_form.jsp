<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Application Form</title>
</head>
<body>
<h1 style="text-align: center;" >Loan Application Form</h1>
	<spr:form action="loan-apply.htm" method="post" commandName="loanApply" >
	<table align="center" >
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
				Amount:
			</td>
			<td>
				<spr:input path="amount"/>
			</td>
		</tr>
		<tr>
			<td>
				Tenure:
			</td>
			<td>
				<spr:input path="tenure"/>
			</td>
		</tr>
		<tr>
			<td>
				Monthly Salary:
			</td>
			<td>
				<spr:input path="monthlySalary"/>
			</td>
		</tr>
		
		<tr>
			<td>
				<a href="my-loan-or-apply.htm" >Back</a>
			</td>
			<td>
				<input type="submit"  value="submit" >
			</td>
		</tr>
	</table>
	</spr:form>
</body>
</html>