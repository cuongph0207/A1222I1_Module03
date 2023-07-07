<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List product</h1>
<a href="/product?action=create">Add new product</a>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Manufactor</th>
    </tr>
    <c:forEach items="${products}" var="p">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.price}</td>
            <td>${p.info}</td>
            <td>${p.manufactor}</td>
            <td><input type="button"><a href="/product?action=update">Update product</a></td>
            <td>
            <form>
                <input type="submit" value="Delete">
            </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
