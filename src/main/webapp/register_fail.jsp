<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
    Author     : Administrator
--%>

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
        <h1>register_fail.jsp ! </h1>
        </header>
        <nav>
            <ul>
                
               <!-- <li><a href="/Instagrim/Images/majed">Sample Images</a></li> -->
            </ul>
        </nav>
       
        <article>
            <h3>Register as user</h3>
            <form method="POST"  action="Register">
                <ul>
                    <li>User Name <input type="text" name="username"></li>
                    <li>Password <input type="password" name="password"></li>
                    <font color="red"><small>The name you used belongs to a registered user  </small></font>
                </ul>
                <br/>
                <input type="submit" value="Register"> 
            </form>

        </article>

    </body>
</html>
