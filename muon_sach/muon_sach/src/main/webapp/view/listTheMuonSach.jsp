<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/7/2022
  Time: 9:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<table border="1px">
    <tr>
        <th>maMuonSach</th>
        <th>maSach</th>
        <th>maHocSinh</th>
        <th>trangThai</th>
        <th>ngayMuon</th>
        <th>ngayTra</th>
        <th>tra sach</th>
    </tr>
    <c:forEach items="${theMuonSachList}" var="theMuonSach">
        <tr>
            <td>${theMuonSach.maMuonSach}</td>
            <td>${theMuonSach.sach}</td>
            <td>${theMuonSach.hocSinh}</td>
            <td>${theMuonSach.trangThai}</td>
            <td>${theMuonSach.ngayMuon}</td>
            <td>${theMuonSach.ngayTra}</td>
            <td>
                <a>
                    <button type="button" class="btn btn-danger" data-toggle="modal"
                            data-target="#h${theMuonSach.maMuonSach}">
                        tra sach
                    </button>

                    <div class="modal fade" id="h${theMuonSach.maMuonSach}" tabindex="-1"
                         aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close
                                    </button>
                                    <a href="/muonSach?action=traSach&maMuonSach=${theMuonSach.maMuonSach}&maSach=${theMuonSach.maSach}">
                                        <button type="button" class="btn btn-danger">tra sach</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="/sach"><button>list sach</button></a>
</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>
</html>
