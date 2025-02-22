<%-- 
    Document   : logout
    Created on : 24 May, 2024, 5:00:41 PM
    Author     : win 10
--%>
<%
session.removeAttribute("userid");
session.invalidate();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to fit=no">
        <title>Log out </title>
        
        
        <script>
           
            window.history.forward();
            window.setTimeout("window.location.href='../index.jsp'",500);
        
        </script>
        
    </head>
    <body bgcolor="black" >
        
    </body>
</html>
