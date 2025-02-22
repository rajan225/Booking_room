<%@page import="dbpack.DbManager"%>
<%

if(request.getParameter("page").equals("changepassword"))
{
String mobile=session.getAttribute("userid").toString();
String opassword=request.getParameter("opassword");
String npassword=request.getParameter("npassword");

DbManager dm=new DbManager();
String query="update linfo set password='"+npassword+"' where mobile='"+mobile+"' and password='"+opassword+"' ";
if(dm.insertUpdateDelete(query))
{
out.print("<script> alert('Password change Successfully');window.location.href='../Llogin.jsp';</script>");
}
else
{
out.print("<script> alert('Some thing wrong...... ');window.location.href='change.jsp';</script>"+mobile);
}
}

%>