<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <!-- Required meta tags -->
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
    <style>
      body {
        background-repeat: no-repeat;
        background-size: cover;
      }

      .img {
        width: 50vh;
        height: 50vh;
        margin-left: 25%;
        margin-top: 10%;
      }

      #icn {
        font-size: 25px;
        margin: 19px;
        color: white;
        cursor: pointer;
      }

      .mobileShow {
        display: inline;
      }

      /* Smartphone Portrait and Landscape */
      @media only screen and (min-device-width: 320px) and (max-device-width: 580px) {
        .mobileShow {
          display: inline;
        }
      }

      .mobileHide {
        display: inline;
      }

      /* Smartphone Portrait and Landscape */
      @media only screen and (min-device-width: 320px) and (max-device-width: 580px) {
        .mobileHide {
          display: none;
        }
      }
    </style>
  </head>
<body>
<div class="container-fluid">
<nav
      class="navbar navbar-expand fixed-top text-light navbar-dark bg-primary justify-content-between"
    >
     
      <div class="nav navbar-nav" style="font-family: cursive; font-size: 25px">
        <b> Loan Management System
        </b>
      </div>
      <div class="nav navbar-nav">
        <a class="nav-item nav-link active" href=""> </a>
      </div><div class="nav navbar-nav">
        <a class="nav-item nav-link active" href=""> </a>
      </div>
      <div class="nav navbar-nav">
        <a class="nav-item nav-link active" href="cust-log-form.htm" >Sign In</a>
      </div>
      <div class="nav navbar-nav">
        <a class="nav-item nav-link active" href="cust-reg-form.htm" >Sign Up</a>
      </div>
    </nav>
</div>
	
	 <footer class="page-footer font-small bg-primary text-light fixed-bottom">
      <div class="footer-copyright text-center">Created by : </div>
      <!-- Copyright -->
      <div class="footer-copyright text-center">
        � 2020 Copyright:
        <a href="https://mdbootstrap.com/"> CDAC</a>
      </div>
      <!-- Copyright -->
    </footer>
</body>
</html>