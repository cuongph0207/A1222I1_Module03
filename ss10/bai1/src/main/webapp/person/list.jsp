<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List</title>
</head>
<body>
<table>
    <tr>
        <th>Name</th>
        <th>Date Of Birth</th>
        <th>Address</th>
        <th>Picture</th>
    </tr>
    <c:forEach items="${personList}" var="p">
        <tr>
            <td>${p.name}</td>
            <td>${p.dob}</td>
            <td>${p.address}</td>
            <td><img src="${p.image}" width="100px" alt=""></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
