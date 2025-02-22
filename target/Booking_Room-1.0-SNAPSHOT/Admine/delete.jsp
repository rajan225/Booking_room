<%@page import="dbpack.DbManager"%>
<%   
String id=request.getParameter("id");
DbManager dm=new DbManager();
String query="delete from news where id='"+id+"'";
if(dm.insertUpdateDelete(query))
{
response.sendRedirect("news.jsp");
}
else
{
out.print("<script>alert('Something went wrong ');window.location.href='news.jsp';</script>");
    
}

%> 