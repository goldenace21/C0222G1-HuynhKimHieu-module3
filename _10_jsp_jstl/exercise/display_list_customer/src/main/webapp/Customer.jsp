<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/27/2022
  Time: 2:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" width="500px">
    <tr>
        <th>name</th>
        <th>birthday</th>
        <th>address</th>
        <th>image</th>
    </tr>
    <c:forEach items="${listcustomer}" var="customer" >
        <tr>
            <td>${customer.name}</td>
            <td>${customer.birthday}</td>
            <td>${customer.address}</td>
            <td style="width: 100px"><img style="width:100%"  src="${customer.path}"></td>
        </tr>
    </c:forEach>
    <tr>
    </tr>
</table>
</body>
</html>
