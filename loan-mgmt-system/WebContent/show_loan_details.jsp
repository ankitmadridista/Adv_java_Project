<%@page import="com.cdac.dto.LoanApply"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<title>Show Loan Details</title>
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



<% LoanApply la = (LoanApply)(request.getAttribute("loanDetails"));
%>
<h1 style="text-align: center;" >Loan Status</h1>
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
                                <b>Loan Type: <%= la.getLoanType() %></b><br>                                
                                <b>EMI: <%= la.getEmi() %></b><br>
                                <b>Monthly Interest: <%= la.getMonthlyInterest() %></b><br> 
                                <b>Amount to be paid <%= la.getPayAmount()  %></b><br>
                                <b>Total Interest <%= la.getTotalInterest() %></b><br>
                                
                                
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
            
        </div>
        
     <div style="text-align: center;">
     	<a href="pay-installment.htm?id=<%= la.getId() %>" > <button class="btn-success btn"> Pay Installment </button></a><b><%= "  "+la.getEmi() + " "%>Rs.</b>
        <br><br><br>
        <input class="btn btn-secondary" onclick="window.print()" type="button" value="Print">
        <br><br><br><br>
        <a href="my-loan-or-apply.htm">Back </a>
    </div>
        
     
    </div>



	
</body>
</html>