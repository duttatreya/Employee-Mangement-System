/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Duttatreya
 */
public class Authentication extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String id = request.getParameter("uid");
        String pass = request.getParameter("pass");
        String query = "select * from login_master where loginid='"+id+"';";
        ResultSet rs = dao.DAOLayer.selectData(query);
     try{
        if(rs.next()){
          //LOGINID EXISTS
               String dbpass = rs.getString(2); 
               HttpSession session = request.getSession();
               session.setAttribute("id", id);
               session.setMaxInactiveInterval(600);
               
           if(pass.equals(dbpass)){
               //VALID ID & PASS
               String role = rs.getString(3);
               if(role.equalsIgnoreCase("admin"))
               {
                //response.sendRedirect("cp");
                   RequestDispatcher rd = request.getRequestDispatcher("adminhome.jsp");
                   rd.forward(request, response);
               }
               else
               {
                 response.sendRedirect("userhome.jsp");
               }
           }
           else{
             //INVALID PASSWORD
               RequestDispatcher rd = request.getRequestDispatcher("index.html");
           rd.include(request, response);  
          String html1 = "<script>alert(\"Wrong Password\")</script>";
          out.println(html1);
             
      
           }
        }
        else{
          //LOGINID DOES NOT EXISTS
          RequestDispatcher rd = request.getRequestDispatcher("index.html");
           rd.include(request, response);  
          String html2 = "<script>alert(\"Login Id Does Not Exist\")</script>";
          out.println(html2);
        }
        }
        catch(Exception e){
         out.print("RESULT EXCEPTION : "+e.getMessage());
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
        processRequest(request, response);
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
