<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : Modified by Igors Bogdanovs
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.models.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagram</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
    </head>
    <body>
        <header>
            <%
                LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                   String name = lg.getUsername();
                   int len=name.length();
                   char nameend = name.charAt(len-1);
                   // If name ends in s, add ' to end -such as Igors will be Igors'
                   // If name ends in anything else, add an 's -such as Robert will be Robert's
                   if(nameend == 's' || nameend == 'S'){
                       name += "'";
                   }
                   else
                   {
                       name += "'s";
                   }

            // method if user loggin 
                // get user name
                //need to coonect to DB and add class of PicModel    

            %>

        </header>

        <ul>
            <li><a href="/Instagrim/upload.jsp">Upload</a></li>
            <li><a href="/Instagrim/Images/majed">Samples</a></li>
            <li><a href="/Instagrim/Logout">Logout</a></li>
        </ul>



        <h1><%=name%> photos</h1>
        <%                    java.util.LinkedList<Pic> lsPics = (java.util.LinkedList<Pic>) request.getAttribute("Pics");// store list of all images
            if (lsPics == null) {
        %>
        <p>No Pictures found</p>
        
        <%
        } else {

            Iterator<Pic> iterator;
            iterator = lsPics.iterator();
            %>
            <ul id="rig">
            <%
            while (iterator.hasNext()) {
                Pic p = (Pic) iterator.next();

        %>
        
            <li>
                <a class="rig-cell" href="/Instagrim/Image/<%=p.getSUUID()%>" >
                    <img class= "rig-img" src="/Instagrim/Thumb/<%=p.getSUUID()%>" alt = "">
                </a>

            </li>
                <%}%> 
            
        </ul>
        <%}%>          


        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
