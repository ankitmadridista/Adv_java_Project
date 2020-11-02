<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Welcome<br><br>
<%= session.getAttribute("customer").toString() %><br><br>

<a href="my-loan-or-apply.htm">My Loan / Apply For Loan</a><br><br>
<a href="emi-calc-form.htm">EMI Calculator</a><br><br>
<a href="pay-installment.htm">Pay Installments</a><br><br>

</body>
</html>