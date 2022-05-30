<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/30/2022
  Time: 2:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product list</h1>
<a href="/product?action=add">add new</a>
<table border="1" style="border-collapse:  collapse">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th colspan="2">Action</th>
    </tr>
    <c:forEach items="${products}" var="product">
    <tr>
        <td>${product.id}</td>
        <td>${product.name}</td>
        <td>${product.price}</td>
        <td><a href="/product?action=update">update</a></td>
        <td><a href="/product?action=delete">delete</a></td>
    </tr>
    </c:forEach>
</body>
</html>
