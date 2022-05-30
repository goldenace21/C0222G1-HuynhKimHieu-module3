<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/30/2022
  Time: 9:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update student</title>
</head>
<body>
    <form action="/studentServlet" method="post">
        <input type="hidden" name="action" value="update"/>
        <input type="hidden" name="id" value="${student.id}"/>
        <label>name: </label>
        <input type="text" name="name" value="${student.name}"/><br>
        <label>birthday</label>
        <input type="text" name="birthday" value="${student.birthday}"/><br>
        <input type="submit" value="update"/>
    </form>
</body>
</html>
