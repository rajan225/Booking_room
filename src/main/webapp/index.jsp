<%-- 
    Document   : index
    Created on : 11 Feb 2025, 8:14:24 am
    Author     : win 10
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to fit=no">
        <title>Online Booking Room </title>
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
    
/*    .room::before
    {
        content: '';
        background: white;
        width: 100%;
        
        position: absolute;
        opacity: 0.9;
        z-index: -1;
    }
    */
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
          <a class="nav-link active" aria-current="page" href="Tenant/fast.jsp">Fast booking</a>
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
               
            
            <!--news s---->
            
            <div class="row" style="display: flex;align-items:center;">
                
                <div class="col-sm-12 bg-danger text-light" Style="min-height: 50px;">
                    <marquee class="" scrollamount="5" onmouseover="stop()" onmouseout="start()" Style=";" >
                       
                    
                    <%
                    DbManager dm=new DbManager();
                    ResultSet rs=dm.select("select * from news");
                    int i=0;
                    while(rs.next())
                    {
                    if(i>0)
                    {
                    out.print("||");
                    }
                    %>
                    
                       <h5 class="d-inline"> <%=rs.getString("news")%></h5>
                    
                    
                         <%
                          
                           i++;
                          }%>
                       </marquee>  
                </div>
            </div>
            
            
            <!--news e---->
            
            <!--main body-->
            
            
            <div class="row">
                
                <%
                ResultSet sr=dm.select("select * from properties where status='Accepted'");
                while(sr.next())
                {
                
                %>
               
                <div class="col-md-3 col-sm-4    my-2">
                <div class="card" style=" height: 400px;">
                    <img src="properties/<%=sr.getString("image")%>" class="card-img-top" alt="..." height="180px">
    <div class="card-body">
        
      <h5 class="card-title">Price : <%=sr.getString("price")%></h5>
      <h5 class="card-title">status: <%=sr.getString("search")%></h5>
      <p class="">Location : <%=sr.getString("location")%></p>
      <p class="card-text"><%=sr.getString("about")%></p>
      <a href=" Tenant/book.jsp?id=<%=sr.getString("id")%>" class="btn btn-primary"Style="margin-bottom: 5px;">Book now</a>
<!--      <a href=" Tenant/fast.jsp?id=<%=sr.getString("id")%>" class="btn btn-primary"Style="margin-bottom: 5px;">Fast booking</a>-->
    </div>
  </div>
                </div>
                <%}%>
            </div>
             
            <!--main body e-->
            
            
            
            
            
            <!--footer s-->
            <div class="row col-sm mt-5">
                
                
                <footer class="bg-dark text-center text-light">
    <div class="container">
      <p>&copy 2024-2030 online booking room. All rights reserved.</p>
      
    </div>
  </footer>
                
            </div>
            
            <!--footer e-->
        </div>
    </body>
</html>
