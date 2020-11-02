<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cust Reg Form</title>
</head>
<body>
	<spr:form action="cust-reg.htm" method="post" commandName="customer" >
	<table align="center" >
		<tr>
			<td>
				Customer Name:
			</td>
			<td>
				<spr:input path="custName"/>
			</td>
		</tr>
		<tr>
			<td>
				Email-Id:
			</td>
			<td>
				<spr:input path="custEmail"/>
			</td>
		</tr>
		<tr>
			<td>
				Password:
			</td>
			<td>
				<spr:password path="custPass"/>
			</td>
		</tr>
		<tr>
			<td>
				Mobile No.:
			</td>
			<td>
				<spr:input path="mobileNo"/>
			</td>
		</tr>
			<tr>
			<td>
				Aadhar number:
			</td>
			<td>
				<spr:input path="adharNo"/>
			</td>
		</tr>
			<tr>
			<td>
				Pan number:
			</td>
			<td>
				<spr:input path="panNo"/>
			</td>
		</tr>
		<tr>
			<td>
				Date of birth:
			</td>
			<td>
				<spr:input path="dateOfBirth"/>
			</td>
		</tr>
		<tr>
			<td>
				Address:
			</td>
			<td>
				<spr:input path="address"/>
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