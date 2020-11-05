<%@page import="com.cdac.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

Object s = (Object) session.getAttribute("admin");

if(s == null ) {
	System.out.println("session fail");
	response.sendRedirect("./");	
}
%>
 
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <!-- Bootstrap CSS -->
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
<%@ include file="navbar.jsp"  %>
<div class="display-4" style="text-align: center; font-family: serif;">
Welcome Admin ...!!!
</div>
	<div class="row" style="height: 60px;">
	</div>
	<div class="row" style="height: 120px; " >
		<div class="col-1 ">
			
		</div>
		<div class="col-4 display-4 shadoow d-flex align-items-center justify-content-center" 
		style="background: whitesmoke; ">
			<a style="color: black; text-decoration: none;" href="admin-view-apply.htm">View applications</a>
		</div>
		<div class="col-2 ">
			
		</div>
		<div class="col-4 shadoow display-4 d-flex align-items-center justify-content-center" style="background: whitesmoke;">
			<a style="color: black; text-decoration: none;"  href="admin-view-loan-status.htm">View Loan Status</a>
		</div>
		<div class="col-1 ">
			
		</div>
	</div>
	<div class="row" style="height: 70px;" ></div>
	<div class="row" style="height: 120px;">
		<div class="col-1 ">
			
		</div>
		<div class="col-4 display-4 shadoow d-flex align-items-center justify-content-center" style="background: whitesmoke;">
			<a style="color: black; text-decoration: none;"  href="loan-type-form.htm">Set Loan Type</a>
		</div>
		<div class="col-2 ">
			
		</div>
		<div class="col-4 display-4 shadoow d-flex align-items-center justify-content-center" style="background: whitesmoke;">
			<a style="color: black; text-decoration: none;"  href="show-loan-type.htm">Show Loan Type</a>
		</div>
		<div class="col-1 ">
			
		</div>
	</div>

 <%@ include file="footer.jsp" %>
</body>
</html>


