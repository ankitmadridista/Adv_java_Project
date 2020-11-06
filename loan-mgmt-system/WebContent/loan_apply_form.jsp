<%@page import="com.cdac.dto.LoanTypeMaster"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>

<title>Loan Application Form</title>
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
<%@ include file="navbar.jsp" %>


<h2 style="text-align: center; font-size: 9vh; font-family: serif;">Loan Application Form</h2><br>

<form action="loan-apply.htm" method="post" style="width: 80vh; margin-left: 67vh" >

  
  <div class="form-group">
   <label for="exampleInputPassword1"><b>Loan Type:</b></label><br>
  		<select name="loanType" class="form-control">
  				<%
					List<LoanTypeMaster> list = (List<LoanTypeMaster>)request.getAttribute("li");
					for(LoanTypeMaster l : list ){
					%>					
					<option value="<%=l.getLoanType() %>"><%= l.getLoanType() %></option>
					<%
					}
					%>
		</select><br>
		
    
    <label for="exampleInputPassword1"><b>Amount:</b></label>
    <input class="form-control" placeholder="Amount" name="amount" required />
    
    <label for="exampleInputPassword1"><b>Tenure (in years):</b></label>
    <input class="form-control" placeholder="Tenure in years" name="tenure" required/>
    
    <label for="exampleInputPassword1"><b>Monthly Salary:</b></label>
    <input class="form-control" placeholder="Monthly Salary" name="monthlySalary" required/>
    
    
  </div><br>
  
  <button type="submit" class="btn btn-primary btn-block">Submit</button>
</form>

<div style="text-align: center;"><br><br><br>
	<a href="my-loan-or-apply.htm" >Back</a>
</div>
	



<%@ include file="footer.jsp" %>
</body>

</html>