<%@page import="dbpack.DbManager"%>
<%
   String rezid=request.getParameter("rezid");
    String orid=request.getParameter("orid");
     String id=request.getParameter("id");
        DbManager dm=new DbManager();
        String query="update booked set payment='Received' where id='"+id+"'";
        dm.insertUpdateDelete(query);
        
String query1="update payment set rezid='"+rezid+"',status='Paid',successdate=now() where orderid='"+orid +"'";
       dm.insertUpdateDelete(query1);
//       response.sendRedirect("Tenant/tenanthome.jsp");

%>