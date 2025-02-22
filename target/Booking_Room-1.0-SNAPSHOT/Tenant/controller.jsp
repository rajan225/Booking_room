

<%--<%@page import="org.springframework.web.reactive.function.client.ClientResponse"%>--%>
<%@page import="org.json.*"%>
<%@page import="com.razorpay.*"%>
<%@page import="dbpack.DbManager"%>
<%

if(request.getParameter("page").equals("changepassword"))
{
String mobile=session.getAttribute("userid").toString();
String opassword=request.getParameter("opassword");
String npassword=request.getParameter("npassword");

DbManager dm=new DbManager();
String query="update tenantinfo set password='"+npassword+"' where mobile='"+mobile+"' and password='"+opassword+"' ";
if(dm.insertUpdateDelete(query))
{
out.print("<script> alert('Password change Successfully');window.location.href='../Tlogin.jsp';</script>");
}
else
{
out.print("<script> alert('Some thing wrong...... ');window.location.href='change.jsp';</script>"+mobile);
}
}
else if(request.getParameter("page").equals("book"))
{
String tmobile=session.getAttribute("userid").toString();
//String tname=request.getParameter("tname");
String roomid=request.getParameter("id");
String cdate=request.getParameter("checkindate");
String lmobile=request.getParameter("mobile");
String image=request.getParameter("image");
String price=request.getParameter("price");
String location=request.getParameter("location");
String search=request.getParameter("search");
//String method=request.getParameter("method");
String about=request.getParameter("about");
String name=request.getParameter("name");
DbManager dm=new DbManager();
String query="insert into booked(roomid,tmobile,lmobile,image,name,price,location,search,cdate,status,date,about,payment) values('"+roomid+"','"+tmobile+"','"+lmobile+"','"+image+"','"+name+"','"+price+"','"+location+"','"+search+"','"+cdate+"','pending',now(),'"+about+"','pending')";
if(dm.insertUpdateDelete(query))
{ 
out.print("<script>alert('Successfully Booked');window.location.href='tenanthome.jsp';</script>");
}
else
{
out.print("<script>alert('Something went wrong try again later');window.location.href='tenanthome.jsp';</script>");
}
}
else
{
response.sendRedirect("tenanthome.jsp");
}
%>