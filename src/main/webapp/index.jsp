<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Modified by Igors Bogdanovs
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.models.*" %>
<%@ page import = "uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts" %>
<%@ page import = "com.datastax.driver.core.Cluster" %>
<!DOCTYPE html>


<html>
    <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <header>
          
                    <%
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                    %>
                <nav>
            <ul>
               
            <li><a href="/Instagrim/Images/majed">Samples</a></li>
            <li><a href="/Instagrim/Logout">Logout</a></li>
             <li><a href="/Instagrim/Profile">Profile</a></li>
             <li class="footer"><a href="/Instagrim">Home</a></li>
                
                <li><a href="Upload">Upload a picture</a></li>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
               
              
            </ul>
        </nav>
                    <%}
                            
                            }else{
                                %>
             <nav>
            <ul>
                                <li><a href="Register">Register</a></li>  
                <li><a href="Login">Login</a></li>  
                 
                 
                  <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
             </nav>
             
                <%
                                        
                            
                    }%>  
        </header>
        </body>
</html>
