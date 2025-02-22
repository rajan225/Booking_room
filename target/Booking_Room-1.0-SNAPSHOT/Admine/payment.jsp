<%-- 
    Document   : payment
    Created on : 10 Oct 2024, 9:51:53 pm
    Author     : win 10
--%>

<%@page import="dbpack.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
{

response.sendRedirect("../Alogin.jsp");
}
else
{
%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to fit=no">
        <title>Payment Page</title>
        <link href="../images/50.jpg" rel="icon"/>
        <link href="../css/bootstrap.css" rel="Stylesheet"/>
            <script src="../js/bootstrap.bundle.js">
                </script>
              
        
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm">
                    
                    
                    
                    <jsp:include page="header.jsp" />
                    
                    
                    
                    
                </div>
            </div>
                    
                    
                    <!--body start-->
                     
                 <div class="row" style="overflow-x: scroll;">
                        
                        <div class="col-sm py-4 my-4" style="box-shadow: 5px 5px 10px 5px black;overflow-x: scroll; ">
                            <div class="row bg-danger"><h2 class="text-center text-light">Payment Detail</h2></div> 
                            <table class="table table-bordered">
                                
                                
                                <tr>
                                    
                                    <th>Sr.No</th>
                                    <th>Room Id</th>
                                     <th>Order Id</th>
                                      <th>Payment Id</th>
                                      <th>mobile </th>
                                       <th>amount</th>
                                        <th>Status</th>
                                         <th>Order time</th>
                                         <th>Success time</th>
                                          
                                </tr>
                                
            <%
//           String userid=session.getAttribute("userid").toString();
            DbManager dm=new DbManager();
            ResultSet rs=dm.select("select * from payment ");
            int i=1;
            while(rs.next())
            {
            %>
            
              <tr>
                                    <td><%out.print(i);%></td>
                                    <td><%=rs.getString("roomid")%></td>
                                    <td><%=rs.getString("orderid")%></td>
                                    <td><%=rs.getString("rezid")%></td>
                                    <td><%=rs.getString("mobile")%></td>
                                    <td><%=rs.getString("amount")%></td>
                                    <td><%=rs.getString("status")%></td>
                                    <td><%=rs.getString("orderdate")%></td>
                                    <td><%=rs.getString("successdate")%></td>
                                    
                                                                       
                   

              </tr>
                           
                            <% i++;
                               }%>
                             </table> 
                        </div>
                        
                    </div>
            
                    <!--body end-->
        </div>
    </body>
</html>
<%}%>