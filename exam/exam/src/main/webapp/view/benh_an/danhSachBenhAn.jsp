<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/10/2022
  Time: 9:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css">
</head>
<body>
<div class="container mx-auto">
    <center><h2 class="my-5">Danh sach benh an</h2></center>
    <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
        <tr>
            <th>ma benh an</th>
            <th>ma benh nhan</th>
            <th>ten benh nhan</th>
            <th>ngay nhap vien</th>
            <th>ngay xuat vien</th>
            <th>ly do nhap vien</th>
            <th>sua</th>
            <th>xoa</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="benhan" items="${benhAnList}">
            <tr>
                <td>${benhan.maBenhAn}</td>
                <td>${benhan.maBenhNhan}</td>
                <td>${benhan.tenBenhNhan}</td>
                <td>${benhan.ngayNhapVien}</td>
                <td>${benhan.ngayRaVien}</td>
                <td>${benhan.lyDoNhapVien}</td>
                <td><a href="/benhan?action=edit&maBenhAn=${benhan.maBenhAn}&maBenhNhan=${benhan.maBenhNhan}&tenBenhNhan=${benhan.tenBenhNhan}">

                    <button type="button" class="btn btn-primary" data-dismiss="modal">edit</button>
                </a></td>
                <td>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#${benhan.maBenhAn}">
                        xoa
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="${benhan.maBenhAn}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">xoa benh an</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    banh co muon benh an ${benhan.maBenhAn}
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <a href="/benhan?action=delete&maBenhAn=${benhan.maBenhAn}">
                                        <button type="button" class="btn btn-danger">xoa</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function () {
        $('#example').DataTable();
    });
</script>
</html>
