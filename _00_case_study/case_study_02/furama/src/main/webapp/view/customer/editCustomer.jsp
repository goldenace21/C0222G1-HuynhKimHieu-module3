<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/4/2022
  Time: 4:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <title>edit</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/view/stylesheet.css">
</head>
<body>
<div class="container">
  <div class="col-lg-6 mx-auto my-5" >
    <form action="/customer" method="post">
      <input hidden name="action" value="edit">
      <input hidden name="id" value="${id}">
      <div class="form-group">
        <label for="exampleInputEmail1">Customer name</label>
        <input type="text" name="name" placeholder="Enter name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Customer type</label>
        <select class="form-control" id="exampleInputPassword1" name="idType">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
      </div>
      <div class="form-group">
        <label for="input3">Customer birthday</label>
        <input type="date" name="birthday" class="form-control" id="input3" aria-describedby="emailHelp">
      </div>
      <div class="form-group">
        <label for="input4">Customer gender</label>
        <select class="form-control" id="input4" name="gender">
          <option>0</option>
          <option>1</option>
        </select>
      </div>
      <div class="form-group">
        <label for="input5">Customer id card</label>
        <input type="number" name="idCard" placeholder="Enter id card" class="form-control" id="input5" aria-describedby="emailHelp">
      </div>
      <div class="form-group">
        <label for="input6">Customer phone number</label>
        <input type="number" name="phoneNumber" placeholder="Enter phone number" class="form-control" id="input6" aria-describedby="emailHelp">
      </div>
      <div class="form-group">
        <label for="input7">Customer email</label>
        <input type="text" name="email" placeholder="Enter email" class="form-control" id="input7" aria-describedby="emailHelp">
      </div>
      <div class="form-group">
        <label for="input8">Customer address</label>
        <select class="form-control" id="input8" name="address">
          <option>da nang</option>
          <option>ha noi</option>
          <option>hue</option>
          <option>vinh</option>
          <option>ha tinh</option>
          <option>ho chi minh</option>
          <option>dien bien phu</option>
          <option>soc trang</option>
        </select>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </div>
</div>
<%--<form action="/customer" method="post">--%>
<%--    <input hidden name="action" value="create">--%>
<%--    <input type="text" name="name" placeholder="enter name">--%>
<%--    <select name="idType">--%>
<%--        <option >1</option>--%>
<%--        <option >2</option>--%>
<%--        <option >3</option>--%>
<%--        <option >4</option>--%>
<%--        <option >5</option>--%>
<%--    </select>--%>
<%--    <input type="date" name="birthday">--%>
<%--    <select name="gender">--%>
<%--        <option>Male</option>--%>
<%--        <option>Female</option>--%>
<%--    </select>--%>
<%--    <input type="text" name="idCard" placeholder="enter id card">--%>
<%--    <input type="text" name="phoneNumber" placeholder="enter phone number">--%>
<%--    <input type="text" name="email" placeholder="enter email">--%>
<%--    <select name="address">--%>
<%--        <option>da nang</option>--%>
<%--        <option>ha noi</option>--%>
<%--        <option>hue</option>--%>
<%--        <option>vinh</option>--%>
<%--        <option>ha tinh</option>--%>
<%--        <option>ho chi minh</option>--%>
<%--        <option>dien bien phu</option>--%>
<%--        <option>soc trang</option>--%>
<%--    </select>--%>
<%--    <button type="submit">Submit</button>--%>
<%--</form>--%>
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

