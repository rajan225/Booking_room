<%@page import="dbpack.DbManager"%>
<%
    
String id=request.getParameter("id");
DbManager dm=new DbManager();
String query="update properties set status='Accepted' where id='"+id+"'";
if(dm.insertUpdateDelete(query))
{
response.sendRedirect("newpro.jsp");
}
else
{
out.print("<script>alert('Something went wrong ');window.location.href='newpro.jsp';</script>");
      
}

%> 