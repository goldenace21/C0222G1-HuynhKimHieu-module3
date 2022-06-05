<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/1/2022
  Time: 8:44 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>User Management Application</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/user?action=create"> <button type="button" class="btn btn-secondary" data-dismiss="modal">create new</button></a>
    </h2>
</center>
<div class="container">
    <form action="/user?action=search" method="get" class="col-lg-6">
        <div class="form-group col-lg-6">
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="country" placeholder="Search by Country">
        </div>
        <button type="submit" class="btn btn-primary">Search</button>

    </form>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Country</th>
            <th scope="col" colspan="2">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${listUser}">
            <c:if test="${country}==${user.country}">

            </c:if>
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
                <td>
                    <a href="/user?action=edit&id=${user.id}&name=${user.name}&email=${user.email}&country=${user.country}">
                        <button type="button" class="btn btn-primary">
                            Edit
                        </button>
                    </a></td>
                <td>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#h${user.id}">
                        Delete
                    </button>

                    <div class="modal fade" id="h${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                        ${user.name}
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <a href="/user?action=delete&id=${user.id}"><button type="button" class="btn btn-primary">
                                        Delete
                                    </button> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</html>
