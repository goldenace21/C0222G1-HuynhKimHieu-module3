<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/27/2022
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>

  <form action="/index" method="get">
    <input name="number1" type="number" placeholder="Enter number 1" value="${number1}" required>
    <select name="operator">
      <option>addition</option>
      <option>subtraction</option>
      <option>multiplication</option>
      <option>division</option>
    </select>
    <input name="number2" type="number" placeholder="Enter number 2" value="${number2}" required>
    <input type="submit">
  </form>
  <p>result : ${result}</p>

  <form>
    <div class="mb-3">
      <label for="exampleInputEmail1" class="form-label">Email address</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
      <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
    </div>
    <div class="mb-3">
      <label for="exampleInputPassword1" class="form-label">Password</label>
      <input type="password" class="form-control" id="exampleInputPassword1">
    </div>
    <div class="mb-3 form-check">
      <input type="checkbox" class="form-check-input" id="exampleCheck1">
      <label class="form-check-label" for="exampleCheck1">Check me out</label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
  </body>
</html>
