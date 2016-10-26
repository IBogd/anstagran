<%-- 
    Document   : profile_home
    Created on : 19-Oct-2016, 15:20:41
    Author     : Igors Bogdanovs <i.bogdanovs@dundee.ac.uk>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.models.*" %>
<%@ page import = "uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts" %>
<%@ page import = "com.datastax.driver.core.Cluster" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" type="text/css" href="/Instagrim/style.css" />

        <title>Instagrim</title>
        
    </head>
    <body>
         <nav>
            <ul>
                <% LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");%>   
            <li><a href="/Instagrim/Images/majed">Samples</a></li>
            <li><a href="/Instagrim/Logout">Logout</a></li>
             <li><a href="/Instagrim/Profile">Profile</a></li>
             <li class="footer"><a href="/Instagrim">Home</a></li>
                
                <li><a href="Upload">Upload a picture</a></li>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
               
              
            </ul>
        </nav>
            <h1>Profile</h1>
        <%  
            String name = lg.getUsername();
            String Aboutme = lg.getAbout();
            String fullName = lg.getName();
        %>
        <profile_header>
            <h1>Hello there <%=name%> :)</h1>
            <h2>Full Name: <%=fullName%> </h2>
            <h3>About Me: <%=Aboutme%> </h3>

        </profile_header>
        
       
    </body>
</html>
