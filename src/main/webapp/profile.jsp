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
        <title>Instagrim</title>
    <h1>profile.jsp</h1>
    </head>
    <body>
        <%
            LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
            String name = lg.getUsername();
            String Aboutme = lg.getAbout();
            String fullName = lg.getName();
        %>
        <profile_header>
            <h1>Hello there <%=name%> :)</h1>
            <h2>Full Name: <%=fullName%> </h2>
            <h3>About Me: <%=Aboutme%> </h3>
            
        </profile_header>
        <h3>Profile</h3>
        <%--here i need to add links for my details with <p> tags as next paragraph 
        <p> First:$(username) </p>
        <p> Last name:$(last name)</p>
            , email, aboutuser </p> --%>
        
 
        
        
        <nav>
            <ul>
                <%
                    if (lg != null) {
                        if (lg.getlogedin()) {
                %>
                
               <%-- <form method="POST"  action="Register"> --%>
    
                  <%--  <input type="submit" value="Register"> 
                </form>  --%>
                
                <li><a href="Upload">Upload a picture</a></li>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
                <li><a href="Logout">Logout</a></li>
                

                <%
                %>
                <%}
                }%>
            </ul>
        </nav>
    </body>
</html>
