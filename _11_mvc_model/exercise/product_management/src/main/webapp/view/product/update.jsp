<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/30/2022
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
<form action="/product?action=update" method="post">
  <input type="hidden" name="id" value="${product.id}">
  <input type="text" name="name" placeholder="Enter name" value="${product.name}">
  <input type="text" name="price" placeholder="Enter price" value="${product.price}">
  <input type="submit" value="update">
</form>
</body>
</html>
