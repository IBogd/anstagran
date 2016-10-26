<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2014, 12:04:14 PM
    Author     : Igors Bogdanovs
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
        <article>
            <h3>Login</h3>
            <form method="POST"  action="Login"> 
                <ul>
                    <li>User Name <input type="text" name="username"></li>
                    <li>Password <input type="password" name="password"></li>
                    <font color="red"><small>Error: Details entered incorrectly</small></font>
                </ul>
                <br/>
                <input type="submit" value="Login"> 
            </form>

        </article>
    </body>
</html>


