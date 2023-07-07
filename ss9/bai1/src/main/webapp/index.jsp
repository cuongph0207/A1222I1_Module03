<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form action="/display-discount" method="get">
    <table>
        <tr>
            <td>Product Description</td>
            <td><input type="text" name="description"></td>
        </tr>
        <tr>
            <td>List Price</td>
            <td><input type="number" name="price"></td>
        </tr>
        <tr>
            <td>Discount Percent</td>
            <td><input type="number" name="percent"></td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Calculate Discount">
            </td>
        </tr>
    </table>
</form>
</body>
</html>