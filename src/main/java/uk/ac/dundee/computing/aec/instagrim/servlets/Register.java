/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.servlets;

import com.datastax.driver.core.Cluster;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts;
import uk.ac.dundee.computing.aec.instagrim.models.User;
import uk.ac.dundee.computing.aec.instagrim.stores.LoggedIn;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {
    Cluster cluster=null;
    public void init(ServletConfig config) throws ServletException {
        // TODO Auto-generated method stub
        cluster = CassandraHosts.getCluster();
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

        String username=request.getParameter("username");
        username = username.toLowerCase();
        String password=request.getParameter("password");
        String first_name=request.getParameter("first_name");
        String last_name=request.getParameter("last_name");
        String email=request.getParameter("email");
        
        
        User us=new User();
        us.setCluster(cluster);
        if(""!=username){
            if (us.userExists(username)){
                //response.sendRedirect("register_fail.jsp");
                RequestDispatcher rd=request.getRequestDispatcher("register_fail.jsp");
                rd.forward(request,response);
            }
        }
        if (""!=username && ""!=password && !us.userExists(username)){
            us.RegisterUser(username, password,first_name,last_name,email);
            HttpSession session=request.getSession();
            //response.sendRedirect("register_success.jsp");
            LoggedIn lg= new LoggedIn();
            lg.setLogedin();
            lg.setUsername(username);
            session.setAttribute("LoggedIn", lg);
 
            
            //Profile p = new Profile();
            //p.init();
            //RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
	   // rd.forward(request,response);
            response.sendRedirect("/Instagrim/Profile");
            }else{
            //error("All fields are required for the registration", response);
         }
        
	//response.sendRedirect("/Instagrim");

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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }
}
