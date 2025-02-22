<%-- 
    Document   : index.jsp
    Created on : 21 May, 2024, 1:48:30 PM
    Author     : win 10
--%>
<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<%

if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
{

response.sendRedirect("../Tlogin.jsp");
}
else
{
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to fit=no">
        <title>Tenant Home </title>
        <link href="../images/50.jpg" rel="icon"/>
        <link href="../css/bootstrap.css" rel="Stylesheet"/>
        <script src="../js/bootstrap.bundle.js">
              
        </script>
        
        
         <style>
    /* Customize the footer style */
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
                <div class="col-sm ">
                    
                    
                    
                    <jsp:include page="header.jsp" />
                    
                    
                    
                    
                </div>
            </div>
            
                    
                      
                <%
    String mobile=session.getAttribute("userid").toString();
    DbManager dm=new DbManager();
                ResultSet rs=dm.select("select * from tenantinfo where mobile='"+mobile+"'");
               
                while(rs.next())
                {
                
                %> 
                    
                    
            
             <div class="row my-5 bg-danger ">
                    <div class="col ">
                        <marquee scrollamount="8" onmouseover="stop()" onmouseout="start()" direction="right" behavior="alternate"><h2 class="text-light">
                  Welcome to || <%=rs.getString("name")%> 
                            </h2>
                        
                    </marquee>
                    </div>
                </div>
                            <%}%>
            <!--main body-->
            
             <div class="row">
               
                <%
    
                ResultSet sr=dm.select("select * from properties where status='Accepted'");
                while(sr.next())
                {
                
                %>
                
                <div class="col-sm-3 my-2">
                <div class="card" style=" height: 400px;">
                    <img src="../properties/<%=sr.getString("image")%>" class="card-img-top" alt="..." height="180px">
    <div class="card-body">
        
      <h5 class="card-title">Price : <%=sr.getString("price")%></h5>
      <h5 class="card-title">status: <%=sr.getString("search")%></h5>
      <p class="">Location : <%=sr.getString("location")%></p>
      <p class="card-text"><%=sr.getString("about")%></p>
      <a href="book.jsp?id=<%=sr.getString("id")%>" class="btn btn-primary"Style="margin-bottom: 5px;">Book now</a>
      <a href="fast.jsp?id=<%=sr.getString("id")%>" class="btn btn-primary"Style="margin-bottom: 5px;">Fast booking</a>
    </div>
  </div>
                </div>
                <%}%>
            </div>
            <!--main body e-->
            
            
               
            
            
        </div>
            
            
            <!--footer s-->
            <div class="row col-sm">
                
                
                <footer class="text-center text-light">
    <div class="container">
      <p>© 2024-2030 online booking room. All rights reserved.</p>
      
    </div>
  </footer>
                
            </div>
            
            <!--footer e-->
    </body>
</html>
<%}%>