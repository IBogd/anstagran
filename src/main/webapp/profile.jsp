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
        <title>Profile home</title>
    </head>
    <body>
        <h1>Hello User!</h1>
        
        <nav>
            <ul>
                 <%
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                    %>
               
                <li><a href="Upload">Upload a picture</a></li> <!--ссылка на страницу upload.jsp -->
                 <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images send to page /Instagrim/Images</a></li>
                <li><a href="Logout">Logout</a></li>
                    
                                // here is where boxes for filling in details will be
                                // then a confirmation box
                            <%}    
                    }%>
            </ul>
        </nav>
    </body>
</html>
