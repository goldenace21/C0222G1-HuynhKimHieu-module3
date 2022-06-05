<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/1/2022
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
    <form action="/user?action=edit&id=${id}" method="post">
<%--        <input type="hidden" name="id" value="${id}">--%>
        <input type="text" name="name" placeholder="Enter name" value="${name}" required>
        <input type="text" name="email" placeholder="Enter email" value="${email}" required>
        <input type="text" name="country" placeholder="Enter country" value="${country}" required>
        <input type="submit" value="edit">
    </form>
</body>
</html>
