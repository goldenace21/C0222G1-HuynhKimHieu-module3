<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/7/2022
  Time: 8:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Create Employee</title>
</head>
<body>
    <form action="/employee" method="post">
        <input hidden name="action" value="create">
        <input type="text" name="name" placeholder="Enter name">
        <input type="date" name="birthday" placeholder="Enter birthday">
        <input type="text" name="idCard" placeholder="Enter id card" >
        <input type="text" name="salary" placeholder="Enter salary" >
        <input type="text" name="phoneNumber" placeholder="Enter phone number" >
        <input type="email" name="email" placeholder="Enter email" >
        <input type="text" name="address" placeholder="Enter adderss" >
        <select name="idPosition">
            <option>1</option>
            <option>2</option>
        </select>
        <select name="idEducation">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
        </select>
        <select name="idDivision">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
        </select>
        <input type="text" name="userName" placeholder="Enter user name">
        <input type="submit" placeholder="create new">
    </form>
</body>
</html>
