<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cust Login Form</title>
</head>
<body>
	<spr:form action="cust-log.htm" method="post" commandName="customer" >
	<table align="center" >
		
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
				<a href="index.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Login" >
			</td>
		</tr>
	</table>
	</spr:form>
</body>
</html>