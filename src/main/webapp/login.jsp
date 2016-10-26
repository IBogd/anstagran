<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2014, 12:04:14 PM
    Author     : modifyed by Igors Bogdanovs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.models.*" %>
<%@ page import = "uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts" %>
<%@ page import = "com.datastax.driver.core.Cluster" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="style.css" />

    </head>
    <body>
        
        <header>
            <nav>
            <ul>
                    <%
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                    %>

                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Images</a></li>
                <li><a href="Logout">Logout</a></li>
                    <%}
                            
                            }else{
                                %>
                 <li><a href="Register">Register</a></li>  
                <li><a href="Login">Login</a></li>  
                 
                 
                  <li class="footer"><a href="/Instagrim">Home</a></li>
                <%
                                        
                            
                    }%>
            </ul>
        </nav>  
        </header>

        <article>
            <h3>Login</h3>
            <form method="POST"  action="Login"> <!--method post otpravlaet login details to cassandra I quess -->
                  <label for="u">User Name</label>
                <input type="text" name="username" id="u" required><br>
               
                <label for="p">Password</label>
                <input type="Password" name="password" id="p" required=""><br>
                <br/>
                <input type="submit" value="Login"> <!--konec form i informacija should be uploaded to the server -->
            </form>

        </article>

    </body>
</html>


