<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/30/2022
  Time: 9:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create student</title>
</head>
<body>
<form action="/studentServlet" method="post">
    <input type="hidden" name="action" value="create"/>
    <label>name: </label>
    <input type="text" name="name"/><br>
    <label>birthday</label>
    <input type="text" name="birthday"/><br>
    <input type="submit" value="register">
</form>
</body>
</html>
