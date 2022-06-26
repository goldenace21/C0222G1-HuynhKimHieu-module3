<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/10/2022
  Time: 9:20 AM
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
    <form action="/benhan" method="post">
        <input hidden name="action" value="edit">
        <center><h2>Sua benh an</h2></center>

        <div class="form-group">
            <label>ma benh an</label>
            <input name="maBenhAn" type="text" class="form-control" value="${maBenhAn}" readonly>
            <small></small>
        </div>
        <div class="form-group">
            <label>ma benh nhan</label>
            <input name="maBenhNhan" type="text" class="form-control" value="${maBenhNhan}" readonly>
            <small></small>
        </div>
        <div class="form-group">
            <label>ten benh nhan</label>
            <input name="tenBenhNhan" type="text" class="form-control" value="${tenBenhNhan}">
            <small>${error}</small>
        </div>
        <div class="form-group">
            <label>ngay nhap vien</label>
            <input name="ngayNhapVien" type="date" class="form-control" required>
            <small></small>
        </div>
        <div class="form-group">
            <label>ngay ra vien</label>
            <input name="ngayRaVien" type="date" class="form-control" required>
            <small></small>
        </div>
        <div class="form-group">
            <label>ly do nhap vien</label>
            <input name="lyDoNhapVien" type="text" class="form-control" value="${lyDoNhapVien}" placeholder="ly do nhap vien">
            <small></small>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
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
