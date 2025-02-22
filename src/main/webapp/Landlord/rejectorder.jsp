<%@page import="dbpack.DbManager"%>
<%
    
String id=request.getParameter("id");
DbManager dm=new DbManager();
String query="update booked set status='Reject' where id='"+id+"'";
if(dm.insertUpdateDelete(query))
{
response.sendRedirect("booking.jsp");
}
else
{
out.print("<script>alert('Something went wrong ');window.location.href='booking.jsp';</script>");
    
}

%> 