<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rider Information</title>
</head>
<body>
    <h1>Rider Information</h1>
    <table border="1" style="background-color: green;">
        <tr>
            <th>Name</th>
            <th>Phone</th>
        </tr>
        <c:forEach var="riders" items="${riders}">
            <tr>
                <td>${riders.name}</td>
                <td>${riders.phone}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
