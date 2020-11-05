<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Loan Type Form</title>
    
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
<br><br>

<h1 style="text-align: center;" >Add Loan Type</h1>
<form action="add-loan-type.htm" method="post" style="width: 80vh; margin-left: 67vh">
  <div class="form-group">
    <label for="exampleInputEmail1"><b>Loan Type</b> </label>
    <input type="text" class="form-control"  placeholder="Loan Type" name="loanType">
     </div><br>
  <div class="form-group">
    <label for="exampleInputPassword1"><b>Interest Rate</b></label>
    <input type="text" class="form-control" placeholder="Interest Rate" name="rateOfInt">
  </div><br>
  
  <button type="submit" class="btn btn-primary btn-block">Submit</button>
</form>
<br>
	<div style="text-align: center;">
        <a href="admin_home.jsp">Back</a>
    </div>

	
	<%@ include file="footer.jsp" %>
</body>
</html>