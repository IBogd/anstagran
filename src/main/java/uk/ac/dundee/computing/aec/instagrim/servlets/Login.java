/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.servlets;
//import java.io.PrintWriter;
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
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    Cluster cluster=null;


    @Override
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
        String password=request.getParameter("password");
        
//        String email = request.getParameter("email");
//        String firstname = request.getParameter("firstname");
//        String lastname = request.getParameter("lastname");
        
        username = username.toLowerCase(); // Regardless of user input, the username is set to lowercase
        
        // If the username is empty, print an error to the output windows
        if(username.equals("")){
            PrintWriter out = null;
            out = new PrintWriter(response.getOutputStream());
            out.println("Input Error : Invalid username length");
            out.println("Enter a valid username");
            out.close();
            return;
        }
        
        // If the password is empty, print an error to the output windows
        if(password.equals("")){
            PrintWriter out = null;
            out = new PrintWriter(response.getOutputStream());
            out.println("Input Error : Invalid password length");
            out.println("Enter a valid password");
            out.close();
            return;
        }
        User us=new User();
        us.setCluster(cluster);
        boolean isValid=us.IsValidUser(username, password);
        HttpSession session=request.getSession();
        System.out.println("Session in servlet "+session);
        if (isValid){
            
            //------------------SET USER VARIABLES-----------------\\
            // when the user logs in, we make a new loggedIn object, setting the 
            // various variables, and then pass them to profile
            LoggedIn lg= new LoggedIn();
            lg.setLogedin();
            lg.setUsername(username);
            lg.setAbout(us.returnAboutMe(username));
            lg.setName(us.returnFullName(username));
            request.setAttribute("LoggedIn", lg);
            //------------------SET USER VARIABLES-----------------\\
            
            session.setAttribute("LoggedIn", lg);
            System.out.println("Session in servlet "+session);
            RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
	    rd.forward(request,response);
            
        }else{
            //response.sendRedirect("/Instagrim/login");// ???????????
            //System.out.println("Login failed");
            RequestDispatcher rd=request.getRequestDispatcher("login_error.jsp");
	    rd.forward(request,response);
            
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


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

}
