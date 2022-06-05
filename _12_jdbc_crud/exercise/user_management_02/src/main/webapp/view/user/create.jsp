<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/1/2022
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
</head>
<body>
    <form action="/user?action=create" method="post">
        <input type="text" name="name" placeholder="Enter name" required>
        <input type="text" name="email" placeholder="Enter email" required>
        <input type="text" name="country" placeholder="Enter country" required>
        <input type="submit" placeholder="create">
    </form>
</body>
</html>
