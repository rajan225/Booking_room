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
        <title>Landlord profile</title>
        <link href="../images/50.jpg" rel="icon"/>
        <link href="../css/bootstrap.css" rel="Stylesheet"/>
        <script src="../js/bootstrap.bundle.js">
              
        </script>
        
        
        
        <style>
    .root {
      background-image: url('../images/h4.jpg');
      background-size: cover;
      background-position: center;
      width: 100%;
      height: 100vh;
      display: flex;
      /*justify-content: center;*/
/*      align-items: end;*/
    }
  </style>
        
        
    </head>
    <body>
        <div class="container-flude">
           
            
            
            <div class="row">
                <div class="col-sm">
                    
                    
                    
                    <jsp:include page="header.jsp" />
                    
                    
                    
                    
                </div>
            </div>
            
            <%
            String userid=session.getAttribute("userid").toString();
            DbManager dm=new DbManager();
            ResultSet rs=dm.select("select * from linfo where mobile='"+userid+"'");
            while(rs.next())
            {
            %>
            
            
                    <div class="row root">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-8 py-4 my-4" style="box-shadow: 5px 5px 10px 5px black; ">
                            <div class="row bg-danger"><h2 class="text-center text-light">PROFILE</h2></div> 
                            <table class="table table-bordered">
                                <tr>
                                    <td>Name</td>
                                    <td><%=rs.getString("name")%></td>
                                </tr>
                                <tr>
                                    <td>Date of Birth</td>
                                    <td><%=rs.getString("dob")%></td>
                                </tr>
                                <tr>
                                    <td>Mobile number</td>
                                    <td><%=rs.getString("mobile")%></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td><%=rs.getString("email")%></td>
                                </tr>
                                 <tr>
                                    <td>Address</td>
                                    <td><%=rs.getString("address")%></td>
                                </tr>
                                <tr>
                                    <td>Aadhar</td>
                                    <td><%=rs.getString("aadhar")%></td>
                                </tr>
                                
                            </table> 
                            <%}%>
                        </div>
                        <div class="col-sm-2"></div>
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