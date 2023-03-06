<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 6/3/2023
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>View User</title>
</head>
<body>
<h1>User details</h1>
<p>
  <a href="/users">Back to user list</a>
</p>
<form method="post">
  <table border="1" cellpadding="5">
    <tr>
      <td><input type = "text" name="country" id="country"></td>
      <td><input type = "submit" value="search"></td>
    </tr>
    <tr>
      <td>Id</td>
      <td>Name</td>
      <td>Email</td>
      <td>Country</td>
    </tr>
<c:forEach items="${user}" var="user">
    <tr>
      <td><c:out value="${user.id}"/></td>
      <td><c:out value="${user.name}"/></td>
      <td><c:out value="${user.email}"/></td>
      <td><c:out value="${user.country}"/></td>
    </tr>
    </c:forEach>
  </table>
</form>
</body>
</html>
