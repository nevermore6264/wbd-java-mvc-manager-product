<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/2/2018
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new product</title>
</head>
<body>
<h1>Create new product</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post" action="/insert">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>ID:</td>
                <td><input type="text" name="id" id="id"></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><input type="text" name="description" id="description"></td>
            </tr>
            <tr>
                <td>Producer:</td>
                <td><input type="text" name="producer" id="producer"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
