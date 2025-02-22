<%-- 
    Document   : index.jsp
    Created on : 21 May, 2024, 1:48:30 PM
    Author     : win 10
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About us </title>
        <link href="images/50.jpg" rel="icon"/>
        <link href="css/bootstrap.css" rel="Stylesheet"/>
        <script src="js/bootstrap.bundle.js">
              
        </script>
        
        
        
         <style>
    .room {
      background-image: url('images/h4.jpg');
      background-size: cover;
      background-position: center;
      width: 100%;
      height: 80vh;
      display: flex;
      justify-content: center;
      align-items: center;
    } 
    
    
    
     footer {
      background-color: orchid;
      padding: 25px 0;
      position: relative;
      bottom: 0;
      width: 100%;
    }
       </style>  
        
        
        
    </head>
    <body>
        <div class="container-flude">
            <div class="row">
                <div class="col-sm">
                    
                    
                    
                    
                    <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Online Booking Room</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        
        
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Registration
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="Tregistration.jsp">Tenant</a></li>
            <li><a class="dropdown-item" href="Lregistration.jsp">Land Lord</a></li>
            
               
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Login
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="Tlogin.jsp">Tenant</a></li>
            <li><a class="dropdown-item" href="Llogin.jsp">Land Lord</a></li>
            
            <li><a class="dropdown-item" href="Alogin.jsp">Admin</a></li>
          </ul>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="about.jsp">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="contact.jsp">Contact Us</a>
        </li>
        
        
       

        
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
                    
                    
                    
                    
                </div>
            </div>
            
            
            
            
            
          <!--navbar end-->
          
          
          
          <div class="container-flude room">
              
              
              <h3 class="">
                  
                 Over 17,000+ hotels and homes 
                 across  25+ contries 
              </h3>
              
              
          </div>
               
            
           
            <!--main body-->
            
            <!-- About Us Section -->
<section id="about" class="py-5">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <h2 class="display-4">About Us</h2>
        <p class="lead">We strive to make the lives of our patrons easier by multiplying revenue channels and using our technological expertise to maximize demand..</p>
        <p>Customer Support, Payment Security, Privacy Policy, Cookie Policy, User Agreement, Terms of Service, More Offices, Make A Payment, Work From Home, Escalation Channel.</p>
      </div>
      <div class="col-lg-6">
        <img src="images/h6.jpg" class="img-fluid rounded-circle" alt="About Us Image">
      </div>
    </div>
  </div>
</section>

            
                
            <!--main body e-->
            
            
            
            
            
            <!--footer s-->
            <div class="row col-sm">
                
                
                <footer class="text-center text-light">
    <div class="container">
      <p>© 2024-2030 online booking room. All rights reserved.</p>
      
    </div>
  </footer>
                
            </div>
            
            <!--footer e-->
        </div>
    </body>
</html>
