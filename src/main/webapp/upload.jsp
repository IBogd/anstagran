<%-- 
    Document   : upload
    Created on : Sep 22, 2014, 6:31:50 PM
    Author     : Administrator
--%>

<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.LoggedIn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                
                  <% LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");%>   
            <li><a href="/Instagrim/Images/majed">Samples</a></li>
            <li><a href="/Instagrim/Logout">Logout</a></li>
             <li><a href="/Instagrim/Profile">Profile</a></li>
             <li class="footer"><a href="/Instagrim">Home</a></li>
                
                <li><a href="Upload">Upload a picture</a></li>
                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
            </ul>
        </nav>
 
        <article>
            <h3>File Upload</h3>
           
            <form method="POST" enctype="multipart/form-data" action="Image">
                File to upload: <input type="file" name="upfile"><br/>

             <br/>
                <input type="submit" value="Press"> to upload the file!
            </form>

        </article>

    </body>
</html>
