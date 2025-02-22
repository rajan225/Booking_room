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

response.sendRedirect("../Alogin.jsp");
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
        <title>Admin Accept </title>
        <link href="../images/50.jpg" rel="icon"/>
        <link href="../css/bootstrap.css" rel="Stylesheet"/>
        <script src="../js/bootstrap.bundle.js">
              
        </script>
    </head>
    <body>
        <div class="container-flude">
            <div class="row">
                <div class="col-sm">
                    
                    
                    
                    <jsp:include page="header.jsp" />
                    
                    
                    
                    
                </div>
            </div>
        
            
            
                    <div class="row " >
                        
                        <div class="col-sm-12 py-4 my-4"style ="min-height: 1000 px; overflow-x: scroll;  " >
                            <div class="row bg-danger sticky-top "><h2 class="text-center text-light">Accept Property</h2></div> 
                            <table class="table table-bordered">
                                <tr>
                                    
                                    
                                    <th>ID</th>  
                                    <th>IMAGES</th>
                                    <th>NAME</th>
                                    <th>PRICE</th>
                                    <th>ROOM /HOSTEL/PG</th>
                                    <th>LOCATION</th>
                                    <th>PHONE NUMBER</th>
                                    <th>STATUS</th>
                                    <th>DETAILS</th>
                                    <th>DATE</th>
                                    <th>Button</th>
                                </tr>
                                
                                
                                
            <%
//            String userid=session.getAttribute("userid").toString();
    
            DbManager dm=new DbManager();
            ResultSet rs=dm.select("select * from properties where status='accepted'" );
            int i=1;
            while(rs.next())
            {
            %>
                                
                                <tr>
                                    <td><%out.print(i);%></td>
                                    <td><img src='../properties/<%=rs.getString("image")%>'height='200px'width='200px'</td>
                                    <td><%=rs.getString("name")%></td>
                                    <td><%=rs.getString("price")%></td>
                                    <td><%=rs.getString("search")%></td>
                                    <td><%=rs.getString("location")%></td>
                                    <td><%=rs.getString("mobile")%></td>
                                    <td><%=rs.getString("status")%></td>
                                    <td><%=rs.getString("about")%></td>
                                    <td><%=rs.getString("date")%></td>
                                    <td><a class="btn btn-outline-success mb-2 " href="acceptorder.jsp?id=<%=rs.getString("id")%>">ACCEPT</a>
                                   <a class="btn btn-outline-danger " href="rejectorder.jsp?id=<%=rs.getString("id")%>">REJECT</a></td> 
                                </tr>
                              
                                
                           
                            <%
            
                      i++;
                         }%>
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