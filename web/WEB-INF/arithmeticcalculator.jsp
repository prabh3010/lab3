<%-- 
    Document   : ArithmeticCalculator
    Created on : 25-Sep-2022, 11:29:49 PM
    Author     : prabh
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
        <br><br>
        <form action="arithmetic" method="POST">
        <div>
            <label>First: </label>
            <input type="number" name="firstNumber" value="${firstNumber}" >
        </div>
        <div>
            <label>Second: </label>
            <input type="number" name="secondNumber" value="${secondNumber}" >
        </div>
        <div>
                <input type="submit" name="operation" value="+" />
                <input type="submit" name="operation" value="-" />
                <input type="submit" name="operation" value="*" />
                <input type="submit" name="operation" value="%" />
        </div>
            <div>
                <p>${message}</p>
            </div>
            <div>
                <a href="age">Age Calculator</a>
            </div>
            </form>
    </body>
</html>
