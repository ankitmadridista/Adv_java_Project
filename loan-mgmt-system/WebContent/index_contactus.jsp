<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    

<!DOCTYPE html>
<html>
<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>Contact</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
</head>
<style>
   body{
       background-color: rgb(219, 226, 226);
       
   }


</style>
<body>
<%@include file="navbar1.jsp" %>
 <div class = "container-fluid">
          
            <div class="row align-items-center bg-warning"
            style="height:80vh;
            background-image: url(contactus.jpg);background-size: cover;background-position: center;">
            </div>


    <div style="background-image: linear-gradient(white,black)">
            <div class="row "style="height:80vh; margin-top:6vh">

                <div class="col-1 "></div>
                <div class="col-1  ">
                    <div class="col-5" style="background-image: url(a1.svg);height:53px;"></div>
                </div>
                <div class="col-5">
                    <h4>  CUSTOMER SUPPORT</h4>
                        For support with your bookings and other queries, click here or visit the Support section.
                </div>
                <div class="col-1  ">
                    <div class="col-4" style="background-image: url(a2.svg);height:53px;"></div>
                </div>
                <div class="col-4">
                   <h4> MEDIA RELATED QUERIES</h4>
                        For press and media related queries please reach out to media@drive.com.
                </div>
                <div class="col-1"></div>
                <div class="col-1">
                    <div class="col-5" style="background-image: url(a3.svg);height:52px;"></div>
                </div>
                <div class="col-5">
                    <h4>CUSTOMER SECURITY</h4>
                    If you have security concerns, please report your issues with us at security@drive.com
                </div>
                <div class="col-1">
                    <div class="col-6" style="background-image: url(a4.svg);height:49px;"></div>
                </div>
                <div class="col-4">
                   <h4>Our Mission </h4>
                    What drives us
					To facilitate credit and economic growth through financial trust, innovation, speed and responsibility
                </div>
            </div>

            <div class="row " style="height:70vh">
                <div class="col-1 "></div>
          <div class="col-6" style="color: white;">    <h1>  Address </h1>
            
           <h3>REGISTERED OFFICE</h3>
            ANI Technologies Private Limited<br>
            Regent Insignia ,<br>
            #414, 3rd Floor, 4th Block,<br>
            17th Main, 100 Feet Road<br>
            Koramangala, Bengaluru, 560034<br><br>
            Phone number 080-67350900<br>
            Fax number 080-67350904
          </div>
          <div class="col-5">
              <div class="col-8 " style="height:60vh; width:100%;background-image: url(a4.svg);background-position: center;background-size: cover;"></div>
          </div>
			</div>
            </div>
           </div> 
<!--Footer-->

  <%@ include file="footer1.jsp" %>

</body>
</html>