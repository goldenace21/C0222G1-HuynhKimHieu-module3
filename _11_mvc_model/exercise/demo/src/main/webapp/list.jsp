<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/29/2022
  Time: 10:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <a href="/studentServlet?action=create">Create student</a>

    <h3>List student</h3>

    <table align="center;" border="1px">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Birthday</th>
            <th colspan="2">Action</th>
        </tr>
        <c:forEach var="student" items="${studentList}}">
            <tr>
                <td>${student.id}</td>
                <td><a href="/studentServlet?action=detail&id=${student.id}">${student.name}</a></td>
                <td>${student.birthday}</td>
                <td><a href="/studentServlet?action=update&id=${student.id}">Update</a></td>
                <td><a href="/studentServlet?action=delete&id=${student.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
