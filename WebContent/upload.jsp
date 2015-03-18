<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File Upload</title>
</head>
  
<body background="C:\Users\ishaan\Downloads\i4.jpg">
 
    <hr/>
  
    <fieldset>
        <legend>Upload File</legend>
        <form action="upload2.jsp" method="post" enctype="multipart/form-data">
            <label for="filename_1">File: </label>
            <input id="filename_1" type="file" name="filename_1" size="50"/><br/>
            <br/>
            <input type="submit" value="Upload File"/>
        </form>
    </fieldset>
    
</body>
</html>