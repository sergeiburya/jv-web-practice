<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
        }
        th, td {
            text-align: left;
        }
        tr:hover {background-color: #D6EEEE;}
    </style>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/deleteDriver?id=${driver.id}">delete driver</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>