<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/7/2022
  Time: 9:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center><h1>Thẻ mượn sách</h1></center>
<label style="color: red">${error}</label>
<form action="/muonSach" method="post">
    <input hidden name="action" value="create">
    <input type="text" name="maMuonSach" placeholder="nhap ma muon sach" required>
    <select name="maSach">
        <option>
            ${maSach}
        </option>
    </select>
    <select name="maHocSinh">
        <c:forEach var="hocsinh" items="${hocSinhList}">
            <option value="${hocsinh.maHocSinh}">
                    ${hocsinh.tenHocSinh}
            </option>
        </c:forEach>
    </select>
    <input type="date" name="ngayMuon" placeholder="enter ngay muon">
    <input type="date" name="ngayTra" placeholder="enter ngay tra">
    <input type="submit" placeholder="submit">
</form>
<a href="/sach"><button>huy</button></a>
</body>
</html>
