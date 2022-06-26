<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/8/2022
  Time: 10:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="px-0 container-fluid">
    <nav style="z-index: 99;box-shadow: 0 3px 5px rgba(0,0,0,.1);height: 4em; width: 100%"
         class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
<%--            <a class="mx-5" href="/index.jsp"> <img style="width: 2.5em" src="${pageContext.request.contextPath}img/home-logo.png"></a>--%>
            <div style="justify-content: start;" class="collapse navbar-collapse" id="navbarNav">
                <ul style="justify-content: space-between;" class="navbar-nav mx-5 col-lg-4">
                    <li class="nav-item">
                        <big><a class="nav-link text-primary" href="/index.jsp">Home</a></big>
                    </li>
                    <li class="nav-item">
                      <big><a class="nav-link text-secondary" href="#">Features</a></big>
                    </li>
                    <li class="nav-item">
                        <big><a class="nav-link text-secondary" href="/benhan">Benh an</a></big>
                    </li>
                </ul>
            </div>
            <form class="form-inline mx-5 my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
</div>
</body>
</html>
