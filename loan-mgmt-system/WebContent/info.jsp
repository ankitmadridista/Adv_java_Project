<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

Object s = (Object) session.getAttribute("admin");
Object s1 = (Object) session.getAttribute("customer");
if(s == null && s1 == null) {
	System.out.println("session fail");
	response.sendRedirect("./");	
}
%>
<!DOCTYPE html>
<html>
<head>

<title>Success page</title>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        #icn {
            font-size: 12vh;
            color: green;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-6  d-flex flex-column justify-content-center align-items-center" style="height: 100vh;">
                <div> <i id="icn" class="far fa-check-circle"></i> </div> <br>
                <h2 class="text-danger"><%= request.getAttribute("msg") %></h2>

                <a href="log_form.jsp" > 
                	<button class="btn btn-outline-danger">
                		BACK
                	</button>
				</a>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>