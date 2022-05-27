<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/27/2022
  Time: 12:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
  <div class="container">
    <div style="justify-content: center" class="row my-5">
      <span>USD to VND</span>
    </div>
    <div style="justify-content: center" class="row my-5">
      <div>
        <form action="conversion.jsp" method="get">
          <div class="form-group">
            <label>Rate</label>
            <input type="text" class="form-control" placeholder="Enter rate" name="rate" value="${rate}">
          </div>
          <div class="form-group">
            <label>USD</label>
            <input type="text" class="form-control" placeholder="Enter USD" name="usd" value="${usd}">
          </div>
          <button type="submit" id = "submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
    </div>
  </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
