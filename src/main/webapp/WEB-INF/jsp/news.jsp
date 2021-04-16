<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Meta Tag -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
          crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
    <link href="${contextPath}/resources/css/templatemo-style.css" rel="stylesheet" />

    <title>Новости</title>

    <!-- All CSS Plugins -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/plugin.css">

    <!-- Main CSS Stylesheet -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">

    <!-- Google Web Fonts  -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700">

    <!-- HTML5 shiv and Respond.js support IE8 or Older for HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="container">
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

<div id="main">
    <c:forEach items="${listOfNews}" var="news">
    <div class="container">
        <div class="row">
            <!-- Blog Post Start -->
            <div class="col-md-12 blog-post">
                <div class="post-title">

                    <a><h1>${news.newsTitle}</h1></a>
                </div>
                <p>${news.newsText}</p>
            </div>
            <!-- Blog Post End -->
            <div class="col-md-12 text-center">
                <div id="post-end-message"></div>
            </div>

        </div>
    </div>
    </c:forEach>
</div>
</div>


<!-- Back to Top Start -->
<a href="#" class="scroll-to-top"><i class="fa fa-long-arrow-up"></i></a>
<!-- Back to Top End -->

<!-- All Javascript Plugins  -->
<script type="text/javascript" src="${contextPath}/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/plugin.js"></script>

<!-- Main Javascript File  -->
<script type="text/javascript" src="${contextPath}/resources/js/scripts.js"></script>

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
</html>>
