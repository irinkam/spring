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
            <th>Date</th>
            <th>First Team Goals</th>
            <th>Second Team Goals</th>
            <th></th>
        </tr>
        </thead>
        <c:forEach items="${listOfMatches}" var="matches">
            <tr>
                <td>${matches.date}</td>
                <td>${matches.firstTeamGoals}</td>
                <td>${matches.secondTeamGoals}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>