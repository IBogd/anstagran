<%-- 
    Document   : upload
    Created on : Sep 22, 2014, 6:31:50 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
    </head>
    <body>
        <h1>upload.jsp  </h1>
        <h2>Your world in White place where you uploaded </h2>
        <nav>
            <ul>
                <%-- <li class="nav"><a href="upload.jsp">Upload</a></li --%>
                <li class="nav"><a href="Upload">Upload</a></li
                <li class="nav"><a href="/Instagrim/Images/majed">Sample Images</a></li>
                <li><a href="Logout">Logout</a></li>
            </ul>
        </nav>
 
        <article>
            <h3>File Upload</h3>
            <label for="status">yes or no</label>
            <input id="status" name="status">
            <form method="POST" enctype="multipart/form-data" action="Image">
                File to upload: <input type="file" name="upfile"><br/>

                <br/>
                <input type="submit" value="Press"> to upload the file!
            </form>

        </article>
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
    </body>
</html>
