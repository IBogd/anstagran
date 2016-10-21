<%-- 
    Document   : profile_home
    Created on : 19-Oct-2016, 15:20:41
    Author     : Igors Bogdanovs <i.bogdanovs@dundee.ac.uk>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
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

               
                <li><a href="Upload">Upload a picture</a></li> <!--ссылка на страницу upload.jsp -->
                    <%
                        
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                            %>
                                // here is where boxes for filling in details will be
                                // then a confirmation box
                            <%}    
                    }%>
            </ul>
        </nav>
    </body>
</html>
