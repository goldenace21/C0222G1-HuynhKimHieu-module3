<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/30/2022
  Time: 9:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail</title>
</head>
<body>
    <label>Id : </label>
    <c:out value="${student.id}"></c:out><br>
    <label>Name : </label>
    <c:out value="${student.name}"></c:out><br>
    <label>Birthday : </label>
    <c:out value="${student.birthday}"></c:out><br>
</body>
</html>
