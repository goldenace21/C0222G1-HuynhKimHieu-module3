<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/27/2022
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/index" method="get">
    <input name="number1" type="number" placeholder="Enter number 1" value="${number1}" required>
    <select name="operator">
      <option>addition</option>
      <option>subtraction</option>
      <option>multiplication</option>
      <option>division</option>
    </select>
    <input name="number2" type="number" placeholder="Enter number 2" value="${number2}" required>
    <input type="submit">
  </form>
  <p>result : ${result}</p>
  </body>
</html>
