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

    <title>index</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
</head>
<style>
   body{
       background-color: rgb(219, 226, 226);
       
   }
   .image1

</style>
<body>
    <div class="Container" style="display:flex;justify-content: center;align-items: center;">
      <div class="row" style="display: flex;background-color: white;height: 80vh; width:80vw;margin-top: 12vh;border-bottom-right-radius:9vh; border-top-left-radius: 9vh;box-shadow:12px 12px 22px gray;background-image: linear-gradient(black,white);">
        <div class="col-4 " style="padding: 0px;">
          <img src="butterfly.webp" alt="" style="height: 80vh;width:100%;border-top-left-radius: 9vh;">
        </div>
        
        <div class="col-8">
          <div class="row">
            <div class="col" style="">
            <div class="col" style="height: 10vh;">
              
            <div style="font-family:'Times New Roman', Times, serif;color: white;"><h1 >Sign Up </h1></div>
            </div>
            	
            <form action="cust-reg.htm" method="post">
            		
	            <div class="row" style="height: 11vh;padding: 5px;border-top: solid 3px;">
	              <div class="col-6" style="height:10vh">
	                <input class="form-control" type="text" name="custEmail" placeholder="Email Id... " style="margin-left:10px;">
	              </div>
	              <div class="col-6">
	                <input class="form-control" type="password" name="custPass" placeholder="Password... " style="width: 23.1vw;">
	              </div>
	              
	            </div>
	          
             <div class="row" style="height: 11vh;padding: 5px;">
              <div class="col-6" style="height:10vh">
                <input class="form-control" type="text" name="custName"  placeholder="Customer Name... " style="margin-left:10px;">
              </div>
              <div class="col-6">
                <input class="form-control" type="text" name="mobileNo" placeholder="Mobile No... " style="width: 23.1vw;">
              </div>
            
            </div>
          
             <div class="row" style="height: 11vh;padding: 5px;">
              <div class="col-6" style="height:10vh">
                <input class="form-control" type="text" name="adharNo" placeholder="Adhar Number... " style="margin-left:10px;">
              </div>
              <div class="col-6">
                <input class="form-control" type="text" name="panNo" placeholder="Pan card number... " style="width: 23.1vw;">
              </div>
            
            </div>
           
            
            <div class="col" style="height: 10vh;">
              <input class="form-control" type="text" name="dateOfBirth" placeholder="Date Of Birth ">
            </div>
			
			 <div class="col" style="height: 10vh;">
              <input class="form-control" type="text" name="address" placeholder="Address ">
            </div>
           <div>
            <div class="col d-flex" style="align-items: center; justify-content: center;margin-top: 2vh;"><button type="submit" class="btn btn-outline-success btn-block" style="width: 50vw;">Sign Up</button></div>
            
          </div>
        </form>
        
          </div>
     
          </div>
          
        </div>
      </div>
      
    </div>   
  
</body>
</html>
