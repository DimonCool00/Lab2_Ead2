<%--
  Created by IntelliJ IDEA.
  User: smird
  Date: 08.02.2021
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Succes Registration</title>
</head>
<body>
<% String fullName = request.getParameter("fullname");
    String email = request.getParameter("email");
    %>
<a>Welcome   <% out.println(fullName); %> User! You have succes register on our website.</a>
<p>Your <%out.println(email); %>,confirmation email sent,please check it!</p>
<a href="index.jsp">Home</a>
</body>
</html>
