<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMI Calc Form</title>
<script type="text/javascript">
function hello() {
	console.log("in hello");
	let loanAmount = document.getElementById("loanAmount").value;
	//let loanType = document.getElementsByName("loanType").value;
	let ratOfInterest = document.getElementById("interestRate").value;
	let tenure = document.getElementById("tenure").value;
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
    //dispBox.children[0]

    dispBox.children[0].innerHTML = dispBox.children[0].innerHTML + res;
    dispBox.children[1].innerHTML = dispBox.children[1].innerHTML + monthlyInterest;
    dispBox.children[2].innerHTML = dispBox.children[2].innerHTML + total;
    dispBox.children[3].innerHTML = dispBox.children[3].innerHTML + totalInterest;

    let parentEle = document.querySelector("#clone").parentElement;

    //console.log(parentEle);
    parentEle.insertBefore(dispBox, parentEle.firstChild);

    document.querySelector("#loanAmount").value = "";
    document.querySelector("#interestRate").value = "";
    document.querySelector("#tenure").value = "";
	
}
</script>

</head>
<body>
<form action="" method="post">
	<table align="center" >
		<tr>
			<td>
				Loan Amount:
			</td>
			<td>
				<input id="loanAmount" type="text" name="loanAmount"/>
			</td>
		</tr>
		<tr>
		<td>
			Loan Type:
		</td>
		<td>
			<select name="loanType">
				<option value="house">House</option>
				<option value="car">Car</option>
				<option value="Personal">Personal</option>
			</select>
		</td>
		</tr>
		<tr>
			<td>
				Rate of Interest:
			</td>
			<td>
				<input type="text" id="interestRate" name="interestRate"/>
			</td>
		</tr>
		<tr>
			<td>
				Tenure (in years):
			</td>
			<td>
				<input type="text" id="tenure" name="loanYears"/>
			</td>
		</tr>
		
		<tr>
			<td>
				<a href="home.jsp" >Back</a>
			</td>
			<td>
				<input type="button"  value="Calculate" onclick="hello()" >
			</td>
		</tr>
	</table>
	</form>
	
	     <div style="text-align: center;">
            <div id="clone" style="visibility: hidden;" >

                <div >
                    EMI :
                </div>
                <div>
                    Monthly Interest :
                </div>
                <div >
                    Total :
                </div>
                <div >
                    Total interest :
                </div>

            </div>
        </div>
</body>
</html>