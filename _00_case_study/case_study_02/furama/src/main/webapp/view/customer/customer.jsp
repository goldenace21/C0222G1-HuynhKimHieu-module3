<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/2/2022
  Time: 9:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Customer</title>
    <link rel="icon" href="https://furamavietnam.com/wp-content/uploads/2018/07/favicon.png">
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"--%>
<%--          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/boostsrap-exam/bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/boostsrap-exam/datatables/css/dataTables.bootstrap4.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/stylesheet.css">


</head>
<body>
<div class="container-fluid px-0">
    <%@include file="/view/header.jsp" %>
    <div class="col-lg-10 my-3 mx-auto">
        <div style="justify-content: space-between" class="row">
            <a href="/customer?action=orderByName">
                <button type="button" class="btn btn-secondary mx-5" data-dismiss="modal">Order by name</button>
            </a>
            <a href="/customer?action=create">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">create new</button>
            </a>
            <form action="/customer" method="get">
                <div class="row form-group mx-5 ">
                    <div class="">
                        <input type="hidden" name="action" value="search" >
                        <input type="text" name="name" placeholder="enter name" value="${name}" class="form-control"
                               id="exampleInputEmail1" aria-describedby="emailHelp">

                    </div>
                    <div class=" mx-3">
                        <input type="text" name="address" placeholder="enter address" value="${address}"
                               class="form-control" id="exampleInputPassword1">

                    </div>
                    <div class="">
                        <button type="submit" class="btn btn-primary">search</button>
                    </div>
                </div>
            </form>
        </div>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">id</th>
                <th scope="col">type</th>
                <th scope="col">name</th>
                <th scope="col">birthday</th>
                <th scope="col">gender</th>
                <th scope="col">idCard</th>
                <th scope="col">phoneNumber</th>
                <th scope="col">email</th>
                <th scope="col">address</th>
                <th scope="col">edit</th>
                <th scope="col">delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.id}</td>
                    <td>${customer.type}</td>
                    <td>${customer.name}</td>
                    <td>${customer.birthday}</td>
                    <td>${customer.gender}</td>
                    <td>${customer.idCard}</td>
                    <td>${customer.phoneNumber}</td>
                    <td>${customer.email}</td>
                    <td>${customer.address}</td>
                    <td><a href="/customer?action=edit&id=${customer.id}">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">edit</button>
                    </a></td>
                    <td>
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#h${customer.id}">
                            delete
                        </button>

                        <div class="modal fade" id="h${customer.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
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
                                        delete ${customer.name} ?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close
                                        </button>
                                        <a href="/customer?action=delete&id=${customer.id}">
                                            <button type="button" class="btn btn-danger">delete</button>
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
</div>
<%--<table border="1px">--%>
<%--    <tr>--%>
<%--        <th>id</th>--%>
<%--        <th>type</th>--%>
<%--        <th>name</th>--%>
<%--        <th>birthday</th>--%>
<%--        <th>gender</th>--%>
<%--        <th>idCard</th>--%>
<%--        <th>phoneNumber</th>--%>
<%--        <th>email</th>--%>
<%--        <th>address</th>--%>
<%--        <th>edit</th>--%>
<%--        <th>delete</th>--%>
<%--    </tr>--%>
<%--    <c:forEach items="${customerList}" var="customer">--%>
<%--        <tr>--%>
<%--            <td>${customer.id}</td>--%>
<%--            <td>${customer.type}</td>--%>
<%--            <td>${customer.name}</td>--%>
<%--            <td>${customer.birthday}</td>--%>
<%--            <td>${customer.gender}</td>--%>
<%--            <td>${customer.idCard}</td>--%>
<%--            <td>${customer.phoneNumber}</td>--%>
<%--            <td>${customer.email}</td>--%>
<%--            <td>${customer.address}</td>--%>
<%--            <td><a href="/customer?action=edit&id=${customer.id}">edit</a></td>--%>
<%--            <td><a href="/customer?action=delete&id=${customer.id}">delete</a></td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--</table>--%>

</body>
<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"--%>
<%--        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"--%>
<%--        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"--%>
<%--        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"--%>
<%--        crossorigin="anonymous"></script>--%>
<script src="webapp/boostsrap-exam/jquery/jquery-3.5.1.min.js"></script>
<script src="webapp/boostsrap-exam/datatables/js/jquery.dataTables.min.js"></script>
<script src="webapp/boostsrap-exam/datatables/js/dataTables.bootstrap4.min.js"></script>
</html>
