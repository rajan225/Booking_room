/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Img;

import dbpack.DbManager;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;


/**
 *
 * @author win 10
 */
@MultipartConfig
@WebServlet(name = "AddImage", urlPatterns = {"/AddImage"})
public class AddImage extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddImage</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddImage at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
         response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        String name=request.getParameter("name");
        String status=request.getParameter("status").toLowerCase();
        String mobile=session.getAttribute("userid").toString();
        String price=request.getParameter("price");
        String location=request.getParameter("location");
        String about=request.getParameter("about");
        Part image=request.getPart("image");
        String imageFileName=image.getSubmittedFileName();
      String imagePath="E:/netbeans/BR/target/BR-1.0-SNAPSHOT/properties"+File.separator+imageFileName;
         
        DbManager dm=new DbManager();   
        String query="insert into properties(mobile,image,name,price,location,status,search,about,date) values('"+mobile+"','"+imageFileName+"','"+name+"','"+price+"','"+location+"','pending','"+status+"','"+about+"',now())";
        if(dm.insertUpdateDelete(query))
        {
try{
FileOutputStream fos=new FileOutputStream(imagePath);
         InputStream is=image.getInputStream();
         byte []data=new byte[is.available()];
         is.read(data);
         fos.write(data);
         fos.close();
          
        }

        catch(Exception e)
        {
        e.printStackTrace();
        }
        out.print("<script>alert('Successfully Uploaded');window.location.href='Landlord/regpro.jsp';</script>");
        }
       else
        {
                out.print("<script>alert('Something went wrong please try again');window.location.href='Landlord/regpro.jsp';</script>");

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
