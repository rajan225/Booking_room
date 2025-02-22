<%-- 
    Document   : login
    Created on : 22 May, 2024, 6:57:12 AM
    Author     : win 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tenant || registration </title>
        <link href="images/50.jpg" rel="icon"/>
        <link href="css/bootstrap.css" rel="Stylesheet"/>
        <script src="js/bootstrap.bundle.js">
            
        </script>
        
        
       <style>
    .container-flude {
      background-image: url('images/h2.jpg');
      background-size: cover;
      background-position: center;
      width: 100%;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: end;
    } 
       </style>  
    </head>
    <body>
        
        <div class="container-flude row col " >
        <form class="form-group text-light " Style=" width:30% ;" method="post"action="controller.jsp"id="frm" onsubmit="event.preventDefault();valid(); ">
            <input type="hidden" name="page" value="tenantregistration"/>
            
           
                    
                        <h4>
                            <U>
                                Registration / Sing Up
                            </U>
                        </h4>
                
                        <h5>
                            Enter your full name
                        </h5>
                   
                        <input class="form-control" required="true"type="text" placeholder="Full name"id="name" name="name"/>
                    
                        <h5>
                            D.O.B
                        </h5>
                        <input class="form-control" required="true"type="date" placeholder="Date of Birth"id="dob" name="dob"/>
                   
                        <h5>
                            Mobile number
                        </h5>
                    
                        <input class="form-control" type="number"required="true" placeholder=" Mobile Number" id="mobilenumber" name="mobilenumber"/>
                    
                        <h5>
                            Email Id
                        </h5>
                    
                        <input class="form-control"required="true" type="email" placeholder="Enter Email id"name="email"/>
                   
                        <h5>
                            Enter password
                        </h5>
               
               
               
               
                        <input class="form-control" id="password" type="password" placeholder="password"name="password"/>
               
               
                
                   
                        <h5>
                           confirm password
                        </h5>
                    
               
                              
                        <input class="form-control" id="cpassword" type="password"required="true" placeholder="confirm password"name="cpassword"/>
               
               
                        <a class=" p-2" href="index.jsp">Back To Home Page</a>
                    <center>
                        <button type="submit" class="btn btn-outline-success my-4 " required="true" >Register</button>
                
                    </center>
                        
                        
                        
     
               
                
                
                
        
            
        </form>
        
        </div>
         <script>
                    
                    function valid()
                    {
                        var password=document.getElementById("password");
                        var cpassword=document.getElementById("cpassword");
                        if(password.value !=cpassword.value)
                        {
                            alert("password and confirm password is not same re-enter password");
                            cpassword.focus();
                        }
                        else
                        {
                            document.getElementById("frm").submit();
                        }
                    }
                </script>
    </body>
</html>
