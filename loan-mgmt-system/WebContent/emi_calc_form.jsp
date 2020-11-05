<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<title>EMI Calc Form</title>
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
<script type="text/javascript">
function hello() {
	console.log("in hello");
	
	let loanAmount = document.getElementById("loanAmount").value.trim(" ");
	let ratOfInterest = document.getElementById("interestRate").value.trim(" ");
	let tenure = document.getElementById("tenure").value.trim(" ");

	if( loanAmount && ratOfInterest && tenure != ""){
		flag = 1;
		let intRatePerMonth = ratOfInterest / ( 12 * 100 );
		let n = tenure * 12;
		let x = 1 + intRatePerMonth;
		let div = Math.pow( x , n );
		
		let res = loanAmount * intRatePerMonth * ( div / ( div - 1 )  ) ; 
		
		console.log("amt " + loanAmount);	
		console.log("roi " + ratOfInterest);	
		console.log("ten " + tenure);	
		console.log("n " + n);	
		console.log("div " + div);	
		console.log("x " + x);
		console.log("int/month " + intRatePerMonth);	
		let monthlyInterest = loanAmount*intRatePerMonth;
		console.log("Monthly Int "+ monthlyInterest);	
		console.log("Emi "+ res);	
		let total = res*n;
		console.log("Total of 12 months "+ total);	
		let totalInterest = total - loanAmount
		console.log("Total Int "+ totalInterest);	
	
		let dispBox = document.querySelector("#clone").cloneNode(true);
	
	    dispBox.removeAttribute("id");
	    dispBox.style.visibility = "visible";
	  
	    dispBox.children[0].innerHTML = dispBox.children[0].innerHTML + res;
	    dispBox.children[1].innerHTML = dispBox.children[1].innerHTML + monthlyInterest;
	    dispBox.children[2].innerHTML = dispBox.children[2].innerHTML + total;
	    dispBox.children[3].innerHTML = dispBox.children[3].innerHTML + totalInterest;
	
	    let parentEle = document.querySelector("#clone").parentElement;
	    parentEle.insertBefore(dispBox, parentEle.firstChild);
	
	    document.querySelector("#loanAmount").value = "";
	    document.querySelector("#interestRate").value = "";
	    document.querySelector("#tenure").value = "";
	}
}
</script>

</head>
<body>
<%@ include file="navbar.jsp" %>
<br>
<div style="text-align: center">
	<h2>EMI CALCULATOR </h2>
</div>

		

<form action="" method="post" style="width: 80vh; margin-left: 67vh">
  <div class="form-group">
    <label for="exampleInputEmail1"><b>Loan Amount</b> </label>
    <input class="form-control" placeholder="Loan Amount" id="loanAmount" type="text" name="loanAmount">
     </div>
	
    
    <div class="form-group">
    <label for="exampleInputEmail1"><b>Interest Rate</b> </label>
    <input class="form-control" placeholder="Interest Rate" type="text" id="interestRate" name="interestRate">
     </div>
     
     <div class="form-group">
    <label for="exampleInputEmail1"><b>Tenure (in years):</b> </label>
    <input class="form-control" placeholder="Tenure in years" type="text" id="tenure" name="loanYears">
     </div>
    
     
    <button type="button" class="btn btn-primary btn-block" onclick="hello()">Calculate</button>
</form>
<br>
		<div style="text-align: center; font-size: 20px; font-weight: bold; ">
            <div id="clone" style="visibility: hidden;" >				
                <div >
                    EMI(Monthly Installments) :
                </div>
                <div>
                    Monthly Interest :
                </div>
                <div >
                    Total Amount with Interest:
                </div>
                <div >
                    Total interest :
                </div>
                 <div style="height: 25px"><hr>
           
					</div>
            </div>
           
      </div>
		
	<div style="text-align: center;">
        <a href="home.jsp">Back</a>
    </div>


    <%@ include file="footer.jsp" %>    
        
</body>
</html>