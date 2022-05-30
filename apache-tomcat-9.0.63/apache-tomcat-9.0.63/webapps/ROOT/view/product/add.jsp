<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/30/2022
  Time: 4:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new</title>
</head>
<body>
<form action="/product?action=add" method="post">
    <input type="text" name="name" placeholder="Enter name">
    <input type="text" name="price" placeholder="Enter price">
    <input type="submit" value="add new">
</form>
</body>
</html>
