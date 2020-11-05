<%@page import="java.util.List"%>
<%@page import="com.cdac.dto.LoanApply"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>My Loans / Apply Loan</title>
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

<div class="container-fluid">    
      
     <!-- My Pending -->
      <div class="row" >
        <div id="top" class="container-fluid ">
		<div class="row content">
			
		</div>
		
		<div class="row justify-content-between align-items-center" style="height: 50px;  font-size: 20px; ">
			<a href="home.jsp" style="color: grey"  >
			
				<button class="btn-dark btn-block btn-rouded">	Back
				</button>	
			</a>
			
			<a href="loan-apply-form.htm" style="color: grey" >
				<button class="btn-dark btn-block btn-rouded">	
					Apply for a loan
				</button>	
			</a>
		</div>
		
		
		<div class="row content">
			
				
				
				<% List<LoanApply> li1 =(List<LoanApply>)request.getAttribute("list1");
					if(li1.size() > 0 ) {
				%>
				<div class=" col-sm-12 main jumbotron">
				<h3 class="text-center">
					<b>Pending Approval</b>
					
					</h3>
							
				<div class="table-responsive" id="myTable"></div>
				<table class="table  table-striped ">
					<thead class="table-dark">
						<tr>
							<th class="align-middle">Id</th>
							<th class="align-middle">Name</th>
							<th class="align-middle">Loan Type</th>
							<th class="align-middle">Amount</th> 
							<th class="align-middle">Tenure</th>
							<th class="align-middle">Interest Rate</th>
							<th class="align-middle">Apply Date</th>
							<th class="align-middle">Status</th> 
							
						</tr>
					</thead>
					<tbody id="myTableBody">
						<%
						for( LoanApply l : li1) { %>
						<tr style="">
							<td class="align-middle"><%= l.getId() %></td>
							<td class="align-middle"><%= l.getCustName() %></td>
							<td class="align-middle"><%= l.getLoanType() %></td>
							<td class="align-middle"><%= l.getAmount() %></td>
							<td class="align-middle"><%= l.getTenure() %></td>
							<td class="align-middle"><%= l.getRateOfInt() %></td>
							<td class="align-middle"><%= l.getApplyDate() %></td>
							<td class="align-middle"><%= l.getStatus() %></td>
							
							
						</tr>
						<%} } %>
					
					</tbody>
				</table>
			</div>
		</div>
	</div>

       
      </div>

<!-- approved -->      
       <div class="row" >
        <div id="top" class="container-fluid ">
		<div class="row content">
			
		</div>
		
		<div class="row content">
			
		
	
				<% List<LoanApply> li2 =(List<LoanApply>)request.getAttribute("list2");
					if(li2.size() > 0 ) {
				%>
				<div class=" col-sm-12 main jumbotron">
					<h3 class="text-center">
						<b>Approved</b>
					
					</h3>
				<div class="table-responsive" id="myTable"></div>
				<table class="table  table-striped ">
					<thead class="table-dark">
						<tr>
							<th class="align-middle">Id</th>
							<th class="align-middle">Name</th>
							<th class="align-middle">Loan Type</th>
							<th class="align-middle">Amount</th> 
							<th class="align-middle">Tenure</th>
							<th class="align-middle">Interest Rate</th>
							<th class="align-middle">Apply Date</th>
							<th class="align-middle">Status</th> 
							<th class="align-middle">View</th>
						</tr>
					</thead>
					<tbody id="myTableBody">
						<%
						for( LoanApply l : li2) { %>
						<tr style="">
							<td class="align-middle"><%= l.getId() %></td>
							<td class="align-middle"><%= l.getCustName() %></td>
							<td class="align-middle"><%= l.getLoanType() %></td>
							<td class="align-middle"><%= l.getAmount() %></td>
							<td class="align-middle"><%= l.getTenure() %></td>
							<td class="align-middle"><%= l.getRateOfInt() %></td>
							<td class="align-middle"><%= l.getApplyDate() %></td>
							<td class="align-middle"><%= l.getStatus() %></td>
							<td class="align-middle">
								<a href="show-loan-details.htm?id=<%=l.getId() %>">
									<button type="button" class="btn btn-primary  btn-sm" >
										View
									</button>
								</a>
							</td>
							
						</tr>
						<%} } %>
					
					</tbody>
				</table>
			</div>
		</div>
	</div>

       
      </div>
      <!-- Rejected -->

	 <div class="row" >
        <div id="top" class="container-fluid ">
		<div class="row content">
			
		</div>
		
		<div class="row content">
			
				
				<% List<LoanApply> li3 =(List<LoanApply>)request.getAttribute("list3");
					if(li3.size() > 0 ) {
				%>
				<div class=" col-sm-12 main jumbotron">
				<h3 class="text-center">
					<b>Rejected Approval</b>
					
					</h3>
				<div class="table-responsive" id="myTable"></div>
				<table class="table  table-striped ">
					<thead class="table-dark">
						<tr>
							<th class="align-middle">Id</th>
							<th class="align-middle">Name</th>
							<th class="align-middle">Loan Type</th>
							<th class="align-middle">Amount</th> 
							<th class="align-middle">Tenure</th>
							<th class="align-middle">Interest Rate</th>
							<th class="align-middle">Apply Date</th>
							<th class="align-middle">Status</th> 
							
						</tr>
					</thead>
					<tbody id="myTableBody">
						<%
						for( LoanApply l : li3) { %>
						<tr style="">
							<td class="align-middle"><%= l.getId() %></td>
							<td class="align-middle"><%= l.getCustName() %></td>
							<td class="align-middle"><%= l.getLoanType() %></td>
							<td class="align-middle"><%= l.getAmount() %></td>
							<td class="align-middle"><%= l.getTenure() %></td>
							<td class="align-middle"><%= l.getRateOfInt() %></td>
							<td class="align-middle"><%= l.getApplyDate() %></td>
							<td class="align-middle"><%= l.getStatus() %></td>
							
						</tr>
						<%} } %>
					
					</tbody>
				</table>
			</div>
		</div>
	</div>

       
      </div>
      
      <!-- Repaid -->      
       <div class="row" >
        <div id="top" class="container-fluid ">
		<div class="row content">
			
		</div>
		
		<div class="row content">
			
		
	
				<% List<LoanApply> li4 =(List<LoanApply>)request.getAttribute("list4");
					if(li4.size() > 0 ) {
				%>
				<div class=" col-sm-12 main jumbotron">
					<h3 class="text-center">
						<b>Repaid</b>
					
					</h3>
				<div class="table-responsive" id="myTable"></div>
				<table class="table  table-striped ">
					<thead class="table-dark">
						<tr>
							<th class="align-middle">Id</th>
							<th class="align-middle">Name</th>
							<th class="align-middle">Loan Type</th>
							<th class="align-middle">Amount</th> 
							<th class="align-middle">Tenure</th>
							<th class="align-middle">Interest Rate</th>
							<th class="align-middle">Apply Date</th>
							<th class="align-middle">Status</th> 
						
						</tr>
					</thead>
					<tbody id="myTableBody">
						<%
						for( LoanApply l : li4) { %>
						<tr style="">
							<td class="align-middle"><%= l.getId() %></td>
							<td class="align-middle"><%= l.getCustName() %></td>
							<td class="align-middle"><%= l.getLoanType() %></td>
							<td class="align-middle"><%= l.getAmount() %></td>
							<td class="align-middle"><%= l.getTenure() %></td>
							<td class="align-middle"><%= l.getRateOfInt() %></td>
							<td class="align-middle"><%= l.getApplyDate() %></td>
							<td class="align-middle"><%= l.getStatus() %></td>
							
							
						</tr>
						<%} } %>
					
					</tbody>
				</table>
			</div>
		</div>
	</div>

       
      </div>
      
</div>

<%@ include file="footer.jsp" %>
</body>
</html>