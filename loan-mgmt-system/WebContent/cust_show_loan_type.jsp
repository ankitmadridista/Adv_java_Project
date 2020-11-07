<%@page import="com.cdac.dto.LoanTypeMaster"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>cust show loan types</title>
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


<div class="container-fluid">    
      
    
      <div class="row" >
        <div id="top" class="container-fluid ">
		<div class="row content">
			
		</div>
		<div class="row justify-content-between align-items-center" style="height: 50px;  font-size: 20px; ">
			<a href="admin_home.jsp" style="color: grey"  >
			
				<button class="btn-dark btn-block btn-rouded">	Back
				</button>	
			</a>
		</div>
		
		<!-- loan Status -->
		<div class="row content">
			<div class=" col-sm-12 main jumbotron">
		
				<h3 class="text-center">
					<b>Loan Types</b>				
				</h3>
							
				<div class="table-responsive" id="myTable"></div>
				<table class="table  table-striped ">
					<thead class="table-dark">
						<tr>
							<th class="align-middle">Loan Type</th>							
							<th class="align-middle">Interest Rate (%)</th>
							
						</tr>
					</thead>
					<tbody id="myTableBody">
						<% List<LoanTypeMaster> li =(List<LoanTypeMaster>)request.getAttribute("list");
		
						for( LoanTypeMaster l : li) { %>
						<tr style="">
						
							<td class="align-middle"><%= l.getLoanType() %></td>
					
							<td class="align-middle"><%= l.getRateOfInt() %></td>
							
						</tr>
						<% } %>
					
					</tbody>
				</table>
			</div>
		</div>
		</div>       
    </div>
 </div>


 <div style="text-align: center;">
        <br><br><br><br>
        <a href="admin_home.jsp">Back </a>
    </div>

<%@ include file="footer.jsp" %>
</body>
</html>