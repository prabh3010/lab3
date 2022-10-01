<%-- 
    Document   : agecalculator
    Created on : 25-Sep-2022, 11:29:15 PM
    Author     : prabh
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
            <div>
            <label>Enter your age: </label>
            <input type="text" name="age" value="0" min="0" >
            </div>
            <div>
                <input type="submit" value="Age next birthday">
            </div>
            <div>
                <p>${message}</p>
            </div>
            <div>
                <a href="arithmetic">Arithmetic Calculator</a>
            </div>
        </form>
    </body>
</html>
