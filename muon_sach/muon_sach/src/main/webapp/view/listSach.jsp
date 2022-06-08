
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>sach</title>
</head>
<body>
<table border="1px">
    <tr>
        <th>ma sach</th>
        <th>ten sach</th>
        <th>tac gia</th>
        <th>mo ta</th>
        <th>so luong</th>
        <th>muon</th>
    </tr>
    <c:forEach items="${sachList}" var="sach">
        <tr>
            <td>${sach.maSach}</td>
            <td>${sach.tenSach}</td>
            <td>${sach.tacGia}</td>
            <td>${sach.moTa}</td>
            <td>${sach.soLuong}</td>
            <td>
                <c:if test="${sach.soLuong > 0}">
                    <a href="/muonSach?action=create&maSach=${sach.maSach}">
                        <button>muon</button>
                    </a>
                </c:if>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>