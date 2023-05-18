/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Vishnu
 */
@WebServlet(urlPatterns = {"/bookadd2"})
public class bookadd2 extends HttpServlet {
     private Map<String,a> ab;
     public void init()
     {
         ab = new HashMap<String,a>();
         
     }
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
            String e=request.getParameter("email");
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet bookadd2</title>");            
            out.println("</head>");
            out.println("<body>");
            if(e!=null&&ab.containsKey(e))
            {
                a o=ab.get(e);
                out.println("name"+o.getname());
                out.println("<br>desig"+o. getDesignation());
                out.println("<br>add1"+o.getAddress1());
                out.println("<br>add2"+o.getAddress2());
                out.println("<br>city"+o.getCity());
                out.println("<br>state"+o.getState());
            }
            else
            {
                out.println("not in the address book");
            }
            out.println("</body>");
            out.println("</html>");
            String n=request.getParameter("name");
             String d=request.getParameter("designation");
              String a1=request.getParameter("address1");
               String a2=request.getParameter("address2"); 
               String c=request.getParameter("city");
                String s=request.getParameter("state");
                a o=new a(n,d,a1,a2,c,s,e);
                ab.put(e,o);
               
               
        }
    }
   private class a
   {
       String name;
       String desig;
       String add1;
       String add2;
       String state;
       String city;
       String email;
       a(String name,String desig,String add1,String add2,String state,String city,String email)
       {
           this.name=name;
           this.desig=desig;
           this.add1=add1;
           this.add2=add2;
           this.state=state;
           this.city=city;
           this.email=email;
       }
       public String getname()
       {
           return name;
       }
        public String getDesignation() {
      return desig;
    }

    public String getAddress1() {
      return add1;
    }

    public String getAddress2() {
      return add2;
    }

    public String getCity() {
      return city;
    }

    public String getState() {
      return state;
    }

    public String getEmail() {
      return email;
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
