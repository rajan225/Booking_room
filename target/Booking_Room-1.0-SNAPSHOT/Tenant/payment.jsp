<%-- 
    Document   : payment
    Created on : 10 Jul, 2024, 11:24:18 AM
    Author     : win 10
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>


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
        <title>Peyment</title>
        <link href="../images/50.jpg" rel="icon"/>
        <link href="../css/bootstrap.css" rel="Stylesheet"/>
        <script src="../js/bootstrap.bundle.js">
              
        </script>
        
    </head>
    <body>
        <div class="container m-auto bg-primary pb-5" width="50%">
            
                   
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
                            
                            
                            
                            
                        <!--body-->
                                                 
                                           <%
    String tmobile=session.getAttribute("userid").toString();
    String id=request.getParameter("id");
    
                ResultSet r=dm.select("select * from booked where id='"+id+"'");
               
                while(r.next())
                {
                
                %> 
                        
                        
                         <div class="row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-8 py-4 my-4" style="box-shadow: 5px 5px 10px 5px black; ">
                            <div class="row bg-danger"><h2 class="text-center text-light">Please select payment mode</h2></div> 
                             <form class="form-group" method="post" action="../pays">
                <!--<input type="hidden" name="page" value="payment"/>-->
                <input type="hidden" name="name" value="<%=r.getString("price")%>"/>
                <input type="hidden" name="id" value="<%=r.getString("id")%>"/>
                            <table class="table table-bordered ">
                                <tr>
                                    <td class=""Style="font-weight:bold;">ONLINE</td>
                                    <td><input type="radio"required="true" name="op" value="online"/></td>
                                </tr>
                                <tr>
                                    <td Style="font-weight:bold;">CASE</td>
                                    <td><input type="radio"required="true" name="op" value="case"/></td>
                                </tr>
                                
       
                                <tr>
                                    <td Style="font-weight:bold;">YOUR AMOUNT</td>
                                    <td>Rs.<%=r.getString("price")%></td>
                                </tr>
                                <tr>
                                    <td><a href="booking.jsp" class="btn btn-success">back</a</td>
                                    <td><button type="submit" class="btn btn-success">process</button></td>
                                </tr>
                            </table> 
                            <%}%>
                             </form>
                        </div>
                        <div class="col-sm-2"></div>
                    </div>
            
                                          
                            
                        <!--body end-->
                            
                            
        </div>
                            
    </body>
</html>
<%}%>

