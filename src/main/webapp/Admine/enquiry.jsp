
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
                        
                        <div class="col-sm-2"></div>
                        
                        <div class="col-sm-8" >
                            
                            
                             <div class=" py-4 my-4"style ="" >
                            <div class="row bg-danger sticky-top "><h2 class="text-center text-light">ENQUIRY </h2></div> 
                            <table class="table table-bordered">
                                <tr>
                                    
                                    
                                    <th>ID</th>  
                                    <th>NAME</th>
                                    <th>MOBILE NUMBER</th>
                                     <th>EMAIL</th>
                                      <th>SUBJECT</th>
                                    <th>ENQUIRY DATE & TIME</th>
                                   
                                </tr>
                                
                                
                                
            <%

    
            DbManager dm=new DbManager();
            ResultSet rs=dm.select("select * from contact " );
            int i=1;
            while(rs.next())
            {
            %>
                                
                                <tr>

                                   
                                    <td><%=rs.getString("id")%></td>
                                    <td><%=rs.getString("name")%></td>
                                   <td><%=rs.getString("mobile")%></td>
                                   <td><%=rs.getString("email")%></td>
                                   <td><%=rs.getString("subject")%></td>
                                    <td><%=rs.getString("date")%></td>                                  
                                        
                                    
                                </tr>
                              
                                
                           
                            <%
            
                      i++;
                         }%>
                          </table> 
                        </div>
                        
                   
                            
                            
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