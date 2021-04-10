<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <title>Users Management</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
          crossorigin="anonymous">

</head>
<body>
<div class="container my-2">
    <h1>Matches List</h1>
    <table border="1" class = "table table table-dark table-striped">
        <thead>
        <tr>
            <th>Country</th>
            <th>Team Name</th>
            <th></th>
        </tr>
        </thead>
        <c:forEach items="${listOfTeams}" var="team">
            <tr>
                <td>${team.country}</td>
                <td>${team.teamName}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>