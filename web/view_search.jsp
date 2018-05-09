<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/2/2018
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Product List</title>
</head>
<body>
<h1>Result</h1>
<p>
    <a href="create.jsp">Create new product</a>
</p>
<form method="post" action="find">
    Find: <input type="text" name="name_search" id="name_search">
    <button>Find</button>
</form>
<table border="1">
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Producer</td>
    </tr>
    <c:forEach items="${requestScope.products}" var="product">
        <tr>
            <td><a href="/view?id=${product.getId()}"><c:out value="${product.getId()}"/></a></td>
            <td><c:out value="${product.getName()}"/></td>
            <td><c:out value="${product.getPrice()}"/></td>
            <td><c:out value="${product.getDescription()}"/></td>
            <td><c:out value="${product.getProducer()}"/></td>
            <td><a href="/edit?id=${product.getId()}"/>Edit</td>
            <td><a href="/delete?id=${product.getId()}"/>Delete</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
