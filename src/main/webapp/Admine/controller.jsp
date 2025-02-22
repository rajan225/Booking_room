<%@page import="dbpack.DbManager"%>
<%
if(request.getParameter("page").equals("news"))
{
String news=request.getParameter("news");
String query="insert into news(news,date)values('"+news+"',now())";
DbManager dm=new DbManager();
if(dm.insertUpdateDelete(query))
{
response.sendRedirect("news.jsp");

}
else
{
out.print("<script>alert('Something went wrong please try agan');window.location.href='news.jsp'</script>");

}
}
    
    
    
    
%>