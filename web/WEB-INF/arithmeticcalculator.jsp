<%-- 
    Document   : arithmeticcalculator
    Created on : Jan 26, 2021, 1:58:11 PM
    Author     : 824664
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        <form action="arithmetic" method="POST">
            First: <input type="text" name="firstNumber" value="${firstNum}">
            Second: <input type="text" name="secondNumber" value="${secondNum}">
            <input type="button" value="+">
            <input type="button" value="-">
            <input type="button" value="*">
            <input type="button" value="%">
        </form>
            <br>
            Result: ${result}
    </body>
</html>
