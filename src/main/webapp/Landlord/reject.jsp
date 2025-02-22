<%-- 
    Document   : index.jsp
    Created on : 21 May, 2024, 1:48:30 PM
    Author     : win 10
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%

if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
{

response.sendRedirect("../Llogin.jsp");
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
        <title>Reject Order </title>
        <link href="../images/50.jpg" rel="icon"/>
        <link href="../css/bootstrap.css" rel="Stylesheet"/>
        <script src="../js/bootstrap.bundle.js">
              
        </script>
        
        
            <style>
/*    .container-flude {
      background-image: url('../images/h4.jpg');
      background-size: cover;
      background-position: center;
      width: 100%;
      height: 80vh;
      display: flex;
      justify-content: center;
      align-items: center;*/
      
       footer {
      background-color: red;
      padding: 25px 0;
      position: relative;
      bottom: 0;
      width: 100%;
    }
    </style>
    </head>
    <body>
       
            <div class="row">
                <div class="col-sm">
                    
                    
                    
                    <jsp:include page="header.jsp" />
                    
                    
                    
                    
                </div>
            </div>
             <div class="container-flude">
                 
                 
                 <div class="row" style="overflow-x: scroll;">
                        
                        <div class="col-sm py-4 my-4" style="box-shadow: 5px 5px 10px 5px black;overflow-x: scroll; ">
                            <div class="row bg-danger"><h2 class="text-center text-light">Rejected Order</h2></div> 
                            <table class="table table-bordered">
                                
                                
                                <tr>
                                    
                                    
                                    <th>Room Id</th>
                                     <th>Room Image</th>
                                      <th>Name</th>
                                      <th>Price</th>
                                       <th>Room /Hostel/Pg</th>
                                        <th>Location</th>
                                         <th>Tenant phone number</th>
                                          <th>Check in date</th>
                                           <th>Booking Date</th>
                                            <th>Status</th>
                                             <th>Details</th>
                                             <th>Payment</th>
                                             <th>Button</th>
                                </tr>
                                
            <%
            String userid=session.getAttribute("userid").toString();
            DbManager dm=new DbManager();
            ResultSet rs=dm.select("select * from booked where lmobile='"+userid+"' and status='Reject'");
            while(rs.next())
            {
            %>
            
              <tr>
                                    <td><%=rs.getString("roomid")%></td>
                                    <td><img src='../properties/<%=rs.getString("image")%>'height='200px'width='200px'/></td>
                                    <td><%=rs.getString("name")%></td>
                                    <td><%=rs.getString("price")%></td>
                                    <td><%=rs.getString("search")%></td>
                                    <td><%=rs.getString("location")%></td>
                                    <td><%=rs.getString("tmobile")%></td>
                                    <td><%=rs.getString("cdate")%></td>
                                    <td><%=rs.getString("date")%></td>
                                    <td><%=rs.getString("status")%></td>
                                    <td><%=rs.getString("about")%></td>
                                    <td><%=rs.getString("payment")%></td>
                    <td><a class="btn btn-outline-success mt-2 "href="acceptorder.jsp?id=<%=rs.getString("id")%>">ACCEPT</a>
                                   <a class="btn btn-outline-danger mt-2 " href="rejectorder.jsp?id=<%=rs.getString("id")%>">REJECT</a></td> 
                               

              </tr>
                           
                            <%}%>
                             </table> 
                        </div>
                        
                    </div>
            
               
            
            
        </div>
                        
                        
            <!--footer s-->
            <div class="row col-sm">
                
                
                <footer class="text-center text-light bg-danger">
    <div class="container m-5">
      <p>© 2024-2030 online booking room. All rights reserved.</p>
      
    </div>
  </footer>
                
            </div>
            
            <!--footer e-->
    </body>
</html>
<%}%>