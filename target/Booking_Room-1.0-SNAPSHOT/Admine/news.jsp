
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to fit=no">
        <title>News  </title>
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
            
           
            
            
                    <div class="row root">
                        <div class="col-sm-5" >
                            
                            
                             <div class=" py-4 my-4"style ="height: 700px;overflow-y: auto;" >
                            <div class="row bg-danger sticky-top "><h2 class="text-center text-light">News </h2></div> 
                            <table class="table table-bordered">
                                <tr>
                                    
                                    
                                    <th>ID</th>  
                                    <th>NEWS</th>
                                   
                                    <th>POST DATE & TIME</th>
                                    <th>Button</th>
                                </tr>
                                
                                
                                
            <%

    
            DbManager dm=new DbManager();
            ResultSet rs=dm.select("select * from news " );
            int i=1;
            while(rs.next())
            {
            %>
                                
                                <tr>
                                     <td><%out.print(i);%></td>
                                   
                             <%--<td><%=rs.getString("id")%></td>--%>
                                    <td><%=rs.getString("news")%></td>
                                   
                                    <td><%=rs.getString("date")%></td>                                  
                                        <td>  <a class="btn btn-outline-danger " href="delete.jsp?id=<%=rs.getString("id")%>">Delete</a></td> 
                                    
                                </tr>
                              
                                
                           
                            <%
            
                      i++;
                         }%>
                          </table> 
                        </div>
                        
                   
                            
                            
                        </div>
                        <div class="col-sm-2"></div>
                        <div class="col-sm-5 py-4 my-4" style="box-shadow: 5px 5px 10px 5px red;height: 700px; ">
                            <div class="row bg-danger"><h2 class="text-center text-light">News Management</h2></div> 
                            <form class="form-group"  method="post" action="controller.jsp" >
          <input type="hidden" name="page" value="news"/>
                            <table class="table table-bordered">    
                                <tr>
                                    <td>Enter News :</td>
                                    <td><textarea class="form-control"placeholder="Enter news" style="min-height: 400px;" name="news"></textarea></td>
                                </tr>
                                <tr>
                                    <td>.</td>
                                    <td>  <input type="submit" class="btn btn-outline-success" value="submit"/></td>
                                </tr>
                               
                            </table> 
                            </form>
                            
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