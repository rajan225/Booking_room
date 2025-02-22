<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%



if(request.getParameter("page").equals("tenantregistration"))
{
String name=request.getParameter("name");
String dob=request.getParameter("dob");
String number=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String password=request.getParameter("password");
DbManager dm=new DbManager();
ResultSet rs=dm.select("select * from tenantinfo where mobile='"+number+"'");
if(rs.next())
{
out.print("<script>alert('Your account is Already Exist');window.location.href='Tlogin.jsp';</script>");
}
else
{
String query="insert into tenantinfo(name,dob,mobile,email,password,date)values('"+name+"','"+dob+"','"+number+"','"+email+"','"+password+"',now())";

if(dm.insertUpdateDelete(query))
{
out.print("<script>alert('Registration is done');window.location.href='index.jsp';</script>");
}
else 
{
out.print("<script>alert('Registration is not done pleace try again');window.location.href='Tregistration.jsp';</script>");
}

}
}
else if(request.getParameter("page").equals("LandlordRegistration"))
{
String name=request.getParameter("name");
String dob=request.getParameter("dob");
String number=request.getParameter("number");
String email=request.getParameter("email");
String address=request.getParameter("address");
String aadhar=request.getParameter("aadhar");
String password=request.getParameter("password");
String epassword=request.getParameter("epassword");

DbManager dm=new DbManager();
ResultSet rs=dm.select("select * from linfo where mobile='"+number+"'");
if(rs.next())
{
out.print("<script>alert('Your account is Already Exist');window.location.href='Llogin.jsp';</script>");
}
else
{
String query="insert into linfo(name,dob,mobile,email,epassword,address,aadhar,password,date)values('"+name+"','"+dob+"','"+number+"','"+email+"','"+epassword+"','"+address+"','"+aadhar+"','"+password+"',now())";
if(dm.insertUpdateDelete(query))
{
out.print("<script> alert('your Registration is done ');window.location.href='index.jsp';</script>" );
}
else
 {

out.print("<script> alert('your registration is not done');window.location.href='Lregistration.jsp';</script>");
}
}
}
else if(request.getParameter("page").equals("tenantlogin"))
{

String number=request.getParameter("number");
String password=request.getParameter("password");
DbManager dm=new DbManager();
ResultSet rs=dm.select("select * from tenantinfo where mobile='"+number+"' and password='"+password+"'");
if(rs.next())
{
//out.print("correct");
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
    session.setAttribute("userid",number);
    response.sendRedirect("Tenant/tenanthome.jsp");
}
else
{
//out.print("incorrect");
    out.print("<script> alert('your mobile number or password is wrong');window.location.href='Tlogin.jsp';</script>");
}
}

else if(request.getParameter("page").equals("landlordlogin"))
{

String number=request.getParameter("number");
String password=request.getParameter("password");
DbManager dm=new DbManager();
ResultSet rs=dm.select("select * from linfo where mobile='"+number+"' and password='"+password+"'");
if(rs.next())
{
//out.print("correct");
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");

    session.setAttribute("userid",number);
    response.sendRedirect("Landlord/landlordhome.jsp");
}
else
{
//out.print("incorrect");
    out.print("<script> alert('your mobile number or password is wrong');window.location.href='Llogin.jsp';</script>");
}
}
else if(request.getParameter("page").equals("adminlogin"))
{

String number=request.getParameter("number");
String password=request.getParameter("password");
DbManager dm=new DbManager();
ResultSet rs=dm.select("select * from ainfo where mobile='"+number+"' and password='"+password+"'");
if(rs.next())
{
//out.print("correct");
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");

    session.setAttribute("userid",number);
    response.sendRedirect("Admine/adminhome.jsp");
}
else
{
//out.print("incorrect");
    out.print("<script> alert('your mobile number or password is wrong');window.location.href='Alogin.jsp';</script>");
}
}

else if(request.getParameter("page").equals("contact"))
{

String name=request.getParameter("name");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String subject=request.getParameter("subject");
DbManager dm=new DbManager();
String query="insert into contact(name,mobile,email,subject,date)values('"+name+"','"+mobile+"','"+email+"','"+subject+"',now())";
if(dm.insertUpdateDelete(query))
{
out.print("<script>alert('Enquiry submitted');window.location.href='contact.jsp'</script>");

}
else
{
out.print("<script>alert('Something went wrong please try agan');window.location.href='contact.jsp'</script>");

}
}

%>