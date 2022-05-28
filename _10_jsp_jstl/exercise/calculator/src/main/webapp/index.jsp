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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        *{
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        .row {
            justify-content: center;
        }
        form {
            /*background: #ccc;*/
        }
    </style>
</head>
<body>
<div class="container my-5">
    <div class="row">
        <h1>calculator</h1>
    </div>
    <div class="row">
        <div class="col-md-6">
            <form action="/index" method="get">
                <div class="form-group">
                    <label> Enter number: </label>
                    <input name="number1" class="form-control" type="number" placeholder="Enter number 1" value="${number1}" required>
                </div>
                <div class="form-group">
                    <select class="form-control" name="operator">
                        <option>addition</option>
                        <option>subtraction</option>
                        <option>multiplication</option>
                        <option>division</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Enter number</label>
                    <input name="number2" class="form-control" type="number" placeholder="Enter number 2" value="${number2}" required>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                <p>result : ${result}</p>
            </form>
        </div>
    </div>
</div>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</html>
