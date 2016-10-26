<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
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
        <article>
            <h3>Register as user</h3>
            <form method="POST"  action="Register">
                <div class="form">
                    <form method="POST"  action="Register">
                <div class="field">
                    <label for="u">User Name</label>
                <input type="text" name="username" id="u" required><br>
               
                <label for="p">Password</label>
                <input type="Password" name="password" id="p" required=""><br>
                 <label for="f">First name</label>
                <input type="text" name="first_name" id="f" required><br>
                <label for="l">Last Name</label>
                <input type="text" name="last_name" id="l" required><br> 
                <label for="e">Email</label>
                <input type="email" name="email" id="e" required><br>
                <label for="e">About me</label>
                <input type="About me " name="about" id="e" required><br> 
                <input type="submit" value="Register"> 
                
                </div>
                    <%--<li>User Name<input type="text" name="username"></li> <br>
                    <li>Password <input type="password" name="password"></li> <br>
                    <li>First name <input type="text" name="first_name"></li> <br>
                    <li>Last name <input type="text" name="last_name"></li> <br>
                    <li>Email <input type="text" name="email"></li> <br>
                    <li>About me <input type="text" name="about"></li> <br>
                <br/>
                <input type="submit" value="Register"> 
                </div> --%>
            </form>

        </article>
    </body>
</html>
