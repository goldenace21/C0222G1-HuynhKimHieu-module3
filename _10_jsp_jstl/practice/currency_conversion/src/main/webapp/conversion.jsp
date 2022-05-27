<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/27/2022
  Time: 8:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!float rate = 0;
float usd = 0;
float vnd = 0;%>
<%
    try {
         rate = Float.parseFloat(request.getParameter("rate"));
         usd = Float.parseFloat(request.getParameter("usd"));
         vnd = rate * usd;
    } catch (Exception e) {
        request.getRequestDispatcher("exception.jsp").forward(request, response);
    }
%>
 <h1>Rate:<%=rate%> </h1>
 <h1>Usd:<%=usd%> </h1>
 <h1>vnd:<%=vnd%> </h1>
</body>
</html>
