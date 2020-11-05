<%@page import="com.cdac.dto.LoanTypeMaster"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>

<title>update rate</title>
<meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <script
      src="https://kit.fontawesome.com/0ff6456f25.js"
      crossorigin="anonymous"
    ></script>
</head>
<body>
<%@ include file="navbar_admin.jsp" %>
<br><br><br>
<h2 style="text-align: center; font-size: 9vh; font-family: serif;">Loan Type</h2><br>

<spr:form action="update-interest-rate.htm" method="post" commandName="loanTypeMaster" style="width: 80vh; margin-left: 67vh" >

  
  <div class="form-group">
  
  <spr:hidden path="loanType"/>
    <label for="exampleInputPassword1"><b>New Interest Rate</b></label>
        
    
    <spr:input class="form-control" placeholder="Interest Rate" path="rateOfInt"/>
  </div><br>
  
  <button type="submit" class="btn btn-primary btn-block">Submit</button>
</spr:form>

<div style="text-align: center;"><br><br><br>
	<a href="show-loan-type.htm" >Back</a>
</div>


<%@ include file="footer.jsp" %>

</body>
</html>