<%-- 
    Document   : agecalculator
    Created on : Jan 26, 2021, 1:38:07 PM
    Author     : 824664
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>
        <h1>Age Calculator</h1>
        <form action="age" method="POST">
            Enter your age: <input type="text" name="currentAge" value="${currentAge}"><br>
            <input type="submit" value="Age next birthday"><br>
        </form>
        
        <div>${output}</div>
        <div>${message}</div>
        
        <a href="arithmetic">Arithmetic Calculator</a>
    </body>
</html>
