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
    </head>
    <body>
        <div class="container-flude">
            <div class="row">
                <div class="col-sm">
                    
                    
                    
                    <jsp:include page="header.jsp" />
                    
                    
                    
                    
                </div>
            </div>
            
            
                    <div class="row col-sm">
                        
                         <div class="col-sm-12 bg-danger text-light" Style="min-height: 50px;">
                    <marquee class="" scrollamount="5" onmouseover="stop()" onmouseout="start()" Style=";" >
                       
                 
                    
                       <h6 class="d-inline" > This is special features for one day booking room. || Your status will be updating only  10 minute.</h6>
                    
                    
                         
                       </marquee>  
                </div>
                        
                    </div>
            
            
                    <div class="row mt-4" style="min-height: 500px;">
                <%
    String id=request.getParameter("id");
    
                DbManager dm=new DbManager();
                ResultSet rs=dm.select("select * from properties where id='"+id+"'");
                while(rs.next())
                {
                %>
                <div class="col-sm" style="">
                    <img src="../properties/<%=rs.getString("image")%>" alt="hiii.."height="80%" width="100%"/>                    
                </div>
                <div class="col-sm  " style="">
                    <h3><%=rs.getString("name")%></h3>
                    <h3>Status : <%=rs.getString("search")%></h3>
                    <h3>Location : <%=rs.getString("location")%></h3>
                    <h3>Special Price : <%=rs.getString("price")%></h3>
                    <h3>Details : <%=rs.getString("about")%></h3>
<!--                    <a class="btn btn-primary mb-2"  href="payment.jsp?id=<%=rs.getString("id")%>">Payment</a>-->
      <form class="form-group" method="post" action="controller.jsp">
                <input type="hidden" name="page" value="book"/>
                <input type="hidden" name="name" value="fast booking"/>
                <input type="hidden" name="id" value="<%=rs.getString("id")%>"/>
                <input type="hidden" name="mobile" value="<%=rs.getString("mobile")%>"/>
                <input type="hidden" name="search" value="<%=rs.getString("search")%>"/>
                <input type="hidden" name="price" value="<%=rs.getString("price")%>"/>
                <input type="hidden" name="image" value="<%=rs.getString("image")%>"/>
                <input type="hidden" name="location" value="<%=rs.getString("location")%>"/>
                <input type="hidden" name="about" value="<%=rs.getString("about")%>"/>
                   
                    <a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" href="#">Book</a>
                    
          </div>
                    <% } %>
                    
                    
                    
                    
                    
                    <!--modal code-->
                    
                    
                    
                    
                    
                    
                    
                    
                  <!--Button trigger modal-->  
                    
                    
                    
                    
         <!--modal-->           
                    
         <!--modal code-->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">This is special features for one day booking room.</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <table class="table table-bordered">
              <tr>
                  <td>Enter booking date</td>
                  <td><input type="date" name="checkindate" /></td>
              </tr>
          </table>
      </div>
      <div class="modal-footer">
   <!--     <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal">Back</button>
-->        <button type="submit" class="btn btn-primary">Save Book</button>
      </div>
    </div>
      </div>
     </div>
           
 </form>                 
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
            <!--model end-->        
                    
                    
                    
            </div>
            
            
        </div>
    </body>
</html>
<%}%>