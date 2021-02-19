<%--
  Created by IntelliJ IDEA.
  User: smird
  Date: 08.02.2021
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SuccesLogin</title>
</head>
<body>
<table style="with: 50%">
    <tr><td>
        <% String username = request.getParameter("username"); %>
        <a>Welcome   <% out.println(username); %> User! You have logged in on out website.</a></td></tr>
</table>
<%

username = request.getParameter("username");
String sessionID = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
if(cookie.getName().equals("Dmitry")) username = cookie.getValue();
if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
}
}
%>
<h3>Hi <%=username %>, Login successful. Your Session ID=<%=sessionID %></h3>
<a href="index.jsp">Home</a>
</body>
</html>
