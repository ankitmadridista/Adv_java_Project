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
            <div class="col align-items-center" style="height: 10vh;">
              
            <div class="mt-5" style="font-family:'Times New Roman', Times, serif;color: white;">
            	<h1 style="text-align: center;">Sign In </h1>
            </div>
           </div>
            	
            <form action="cust-log.htm" method="post">
            <div class="col" style="height: 10vh;">
            </div>
           
            <div class="col" style="height: 10vh;">
              <input class="form-control" type="text" name="custEmail" placeholder="Email Id... ">
            </div>
			
			 <div class="col" style="height: 10vh;">
              <input class="form-control" type="password" name="custPass" placeholder="Password... ">
            </div>
           <div>
	            <div class="col d-flex" style="align-items: center; justify-content: center;margin-top: 2vh;">
		            <button type="submit" class="btn btn-primary btn-block" style="width: 50vw;">Sign In
		            </button>
	           
	            </div>
		     
	        </div>
        	  
        
        </form><br>
        
         <div style="text-align: center;">
	        		<a href="index.jsp">Back</a>
	           	</div>
        
          </div>
     
          </div>
          
        </div>
      </div>
      
    </div>   
  
</body>
</html>


