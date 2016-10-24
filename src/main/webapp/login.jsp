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
        <title>Instagram</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />

    </head>
    <body>
        <header>
        <h1>welcome to login.jsp page </h1>
        </header>
        
        <nav>
            <ul>
                
                <!--<li><a href="/Instagrim/Images/majed">Sample Images,пока не понятно что делать с этим</a></li> -->
                 <article>
           
            </ul>
        </nav>
       
        <article>
            <h3>Login</h3>
            <form method="POST"  action="Login"> <!--method post otpravlaet login details to cassandra I quess -->
                <ul>
                    <li>User Name <input type="text" name="username"></li>
                    <li>Password <input type="password" name="password"></li>
                </ul>
                <br/>
                <input type="submit" value="Login"> <!--konec form i informacija should be uploaded to the server -->
            </form>

        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
                <li>&COPY; Igors B</li>
            </ul>
        </footer>
    </body>
</html>


