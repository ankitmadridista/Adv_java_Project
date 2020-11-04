<%@page import="com.cdac.dto.LoanApply"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<title>View Application</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
      <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
      
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
     <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        
    <script
      src="https://kit.fontawesome.com/0ff6456f25.js"
      crossorigin="anonymous"
    ></script>
     <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        
</head>


<body>
<br><br>
<% LoanApply la = (LoanApply)(request.getAttribute("loanDetails"));
%>

<h1 style="text-align: center;" >Application Status</h1>
<div class="container-fluid">
         <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
      
       <!------ Include the above in your HEAD tag ---------->
        
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="invoice-title">
                       
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-xs-10">
                            <address>
                            <strong>Customer Name: <%= la.getCustName() %> </strong><br>
                                <b>Amount:<%= la.getAmount() %> </b><br>
                                <b>Tenure: <%= la.getTenure() %></b><br>                                
                                <b>Monthly Salary: <%= la.getMonthlySalary() %></b><br>
                   
                                <b>Interest Rate: <%= la.getRateOfInt() %></b><br>
                                <b>Status: <%= la.getStatus() %></b><br>
                            
                                
                            </address>
                        </div>
                        <div class="col-xs-2 text-right">
                            <address>
                               
                                <strong>Application Date:</strong><br>
                                <%= la.getApplyDate() %><br><br>
                            </address>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            
                        </div>
                        <div class="col-xs-6 text-right">
                            
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Action</strong></h3>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-condensed">
                                    <thead>
                                        <tr>
                                            <td class="text-center"><strong>
                                            
                                            <a href="approve-loan.htm?id=<%= la.getId() %>" >
												<button type="button" class="btn btn-success btn-lg" >Approve</button></a>

																	
											 </a></strong></td>
                                            <td class="text-center"><strong>
                                            <a href="reject-loan.htm?id=<%= la.getId() %>" >
												<button type="button" class="btn btn-danger btn-lg" >Reject</button></a>								
											 </a></strong></td>
                                        </tr>
                                    </thead>
                                  
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="text-align: center;">
        
        <br><br>
        <a  href="admin-view-apply.htm">Back</a>
    </div>
    </div>
	
</body>
</html>