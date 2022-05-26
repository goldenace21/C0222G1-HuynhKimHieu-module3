<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/26/2022
  Time: 1:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>
    Product Discount Calculator
  </h1>
  <div id="content">
    <form action="/index" method="post">
      <div id="data">
        <label>Product description</label>
        <input type="text" name="description" value="${description}">
        <br>
        <label>Price</label>
        <input type="text" name="price" value="${price}">
        <br>
        <label>Discount persent</label>
        <input type="text" name="discount" value="${discount}">
      </div>
      <div>
        <br>
        <input type="submit">
      </div>
    </form>
  </div>
  <p> descripton :${descripton}</p>
  <p> price :${price}</p>
  <p> discount_percent :${discount_percent}</p>
  <p> discount :${discount}</p>
  <p> total :${total}</p>
  </body>
</html>
