<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Employee</title>
    <link rel="icon" href="https://furamavietnam.com/wp-content/uploads/2018/07/favicon.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/stylesheet.css">
</head>
<body>
<%@include file="/view/header.jsp" %>

    <div class="col-md-12 table-responsive">
        <a href="/employee?action=create">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">create new</button>
        </a>
        <form action="/employee">
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
        <table class="table">
            <thead>
            <tr>
                <th scope="col">id</th>
                <th scope="col">name</th>
                <th scope="col">birthday</th>
                <th scope="col">idCard</th>
                <th scope="col">salary</th>
                <th scope="col">phoneNumber</th>
                <th scope="col">email</th>
                <th scope="col">address</th>
                <th scope="col">idPosition</th>
                <th scope="col">idEducation</th>
                <th scope="col">idDivision</th>
                <th scope="col">userName</th>
                <th scope="col">edit</th>
                <th scope="col">delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${employeeList}" var="employee">
                <tr>
                    <td>${employee.id}</td>
                    <td>${employee.name}</td>
                    <td>${employee.birthday}</td>
                    <td>${employee.idCard}</td>
                    <td>${employee.salary}</td>
                    <td>${employee.phoneNumber}</td>
                    <td>${employee.email}</td>
                    <td>${employee.address}</td>
                    <td>${employee.idPosition}</td>
                    <td>${employee.idEducation}</td>
                    <td>${employee.idDivision}</td>
                    <td>${employee.userName}</td>
                    <td><a href="/employee?action=edit&id=${employee.id}">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">edit</button>
                    </a></td>
                    <td>
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#h${employee.id}">
                            delete
                        </button>

                        <div class="modal fade" id="h${employee.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
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
                                        delete ${employee.name} ?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close
                                        </button>
                                        <a href="/employee?action=delete&id=${employee.id}">
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
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</html>
