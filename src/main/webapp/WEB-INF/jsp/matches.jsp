<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <title>Матчи</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
          crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
    <link href="${contextPath}/resources/css/templatemo-style.css" rel="stylesheet" />

</head>
<body>
<div class="container">
    <!-- Top box -->
    <!-- Logo & Site Name -->
    <div class="placeholder">
        <div class="parallax-window" data-parallax="scroll" data-image-src="https://mediasat.info/wp-content/uploads/2019/07/Goal-Soccer.jpg">
            <div class="tm-header">
                <div class="row tm-header-inner">
                    <div class="col-md-6 col-12">
                        <img src="${contextPath}/resources/img/simple-house-logo.png" alt="Logo" class="tm-site-logo" />
                        <div class="tm-site-text-box">
                            <h1 class="tm-site-title">Футбольный портал</h1>
                            <h6 class="tm-site-description">Новости мирового и российского футбола</h6>
                        </div>
                    </div>
                    <nav class="col-md-6 col-12 tm-nav">
                        <ul class="tm-nav-ul">
                            <li class="tm-nav-li"><a href="/" class="tm-nav-link">На главную</a></li>
                            <sec:authorize access="!isAuthenticated()">
                                <li class="tm-nav-li"><a href="/login" class="tm-nav-link">Войти</a></li>
                            </sec:authorize>
                            <sec:authorize access="isAuthenticated()">
                                <li class="tm-nav-li"><a href="/matches" class="tm-nav-link">Матчи</a></li>
                                <li class="tm-nav-li"><a href="/news" class="tm-nav-link">Новости</a></li>
                                <li class="tm-nav-li"><a href="/teams" class="tm-nav-link">Команды</a></li>
                                <li class="tm-nav-li"><a href="/logout" class="tm-nav-link">Выйти</a></li>
                            </sec:authorize>
                            <sec:authorize access="!isAuthenticated()">
                                <li class="tm-nav-li"><a href="/registration" class="tm-nav-link">Зарегистрироваться</a></li>
                            </sec:authorize>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <main>
        <header class="row tm-welcome-section">
            <h2 class="col-12 text-center tm-section-title">Добро пожаловать на футбольный портал!</h2>
            <p class="col-12 text-center">Здесь вы можете посмотреть информацию о предстоящих и прошедших матчах, а также информацию о любимых командах российского и мирового футбола</p>
        </header>

<div class="container my-2">
    <h2 class="col-12 text-center tm-section-title">Таблица матчей</h2>
    <table border="1" class = "table table-hover">
        <thead>
        <tr>
            <th>Дата</th>
            <th>Первая команда</th>
            <th>Голы первой команды</th>
            <th>Голы второй команды</th>
            <th>Вторая команда</th>
        </tr>
        </thead>
        <c:forEach items="${listOfMatches}" var="matches">
            <tr>
                <td>${matches.date}</td>
                <td>${matches.firstTeamName}</td>
                <td>${matches.firstTeamGoals}</td>
                <td>${matches.secondTeamGoals}</td>
                <td>${matches.secondTeamName}</td>
            </tr>
        </c:forEach>
    </table>
</div>
    </main>
        <footer class="tm-footer text-center">
            <p>TPU Football 2021</p>
        </footer>
</div>
<script src="${contextPath}/resources/js/jquery.min.js"></script>
<script src="${contextPath}/resources/js/parallax.min.js"></script>
<script>
    $(document).ready(function(){
        // Handle click on paging links
        $('.tm-paging-link').click(function(e){
            e.preventDefault();

            var page = $(this).text().toLowerCase();
            $('.tm-gallery-page').addClass('hidden');
            $('#tm-gallery-page-' + page).removeClass('hidden');
            $('.tm-paging-link').removeClass('active');
            $(this).addClass("active");
        });
    });
</script>
</body>
</html>