/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package pays;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;
import dbpack.DbManager;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONObject;

/**
 *
 * @author win 10
 */
@WebServlet(name = "pays", urlPatterns = {"/pays"})
public class pays extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            out.print("hi");

            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet pays</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet pays at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
//        processRequest(request, response);
PrintWriter out = response.getWriter();
HttpSession session=request.getSession();
String userid=session.getAttribute("userid").toString();
String id=request.getParameter("id");
String price=request.getParameter("name");
int p=Integer.parseInt(price);
String op=request.getParameter("op");
DbManager dm=new DbManager();
 ResultSet rs=dm.select("select * from booked where id='"+id+"'");
               
                while(rs.next())
                {
    String status=rs.getString("status");
  if("Accepted".equals(status)) 
  { 
        String payment=rs.getString("payment");
      if("Received".equals(payment))
      {
       out.print("<script>alert('Your payment is already paid to online mode.');window.location.href='Tenant/booking.jsp';</script>");   
      }
      else
      {
    if(op.equals("online"))
    {   
        
        try
        {
        
        var razpay = new RazorpayClient("rzp_test_eaYPsyGzbeur7p","gYJaa6SmhPtaemuHUtUpYCkv");
        
        JSONObject orderRequest = new JSONObject();
        orderRequest.put("amount",p*100);
        orderRequest.put("currency","INR");
        orderRequest.put("receipt", "txn_123456");
        Order order = razpay.orders.create(orderRequest);
        String orderid=order.get("id").toString();
        
        //   DbManager dm=new DbManager();
        String query="INSERT INTO payment(orderid,roomid,mobile,rezid,amount,status,orderdate,successdate) VALUES ('"+orderid+"','"+id+"','"+userid+"','null','"+price+"','pending',now(),'null')";
        dm.insertUpdateDelete(query);
        request.setAttribute("order", order.toString());
        
        request.getRequestDispatcher("Tenant/pay.jsp?id="+id).forward(request, response);
    } 
        catch (RazorpayException ex)
        {
        ex.printStackTrace();
    }
    }
    
    else
    {
        //  DbManager dm=new DbManager();
        String query="update booked set payment='Case' where id='"+id+"'and status='Accepted'  ";
        if(dm.insertUpdateDelete(query))
        {
            out.print("<script>alert('Successfully Booked');window.location.href='Tenant/booking.jsp';</script>");
            
        }

    }
      }
     }
  else if("pending".equals(status))
  {
  out.print("<script>alert('Please wait for status Accepted...');window.location.href='Tenant/booking.jsp';</script>");
  }
  else if("Reject".equals(status))
  {
  out.print("<script>alert('Your booking is rejected. ! Please again booking or contact Landlord.');window.location.href='Tenant/booking.jsp';</script>");
  }
  
   }
//out.print("hii");

} catch (SQLException ex) {
            ex.printStackTrace();
        }
        
    } 
}
