<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html>
<head>
  <title>Главная</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
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

    <div class="tm-paging-links">
      <nav>
        <ul>
          <button type="button" class="btn btn-outline-success">Success</button>
          <button type="button" class="btn btn-outline-success">Success</button>
          <li class="tm-paging-item"><a href="#" class="tm-paging-link active">Просмотр матчей</a></li>
          <li class="tm-paging-item"><a href="#" class="tm-paging-link">Просмотр команд</a></li>
        </ul>
      </nav>
    </div>

    <!-- Gallery -->
    <div class="row tm-gallery">
      <!-- gallery page -->
      <div id="tm-gallery-page-pizza" class="tm-gallery-page">
        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
          <figure>
            <img src="${contextPath}/resources/img/gallery/01.jpg" alt="Image" class="img-fluid tm-gallery-img" />

          </figure>
        </article>
        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
          <figure>
            <img src="${contextPath}/resources/img/gallery/02.jpg" alt="Image" class="img-fluid tm-gallery-img" />
          </figure>
        </article>
        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
          <figure>
            <img src="${contextPath}/resources/img/gallery/03.jpg" alt="Image" class="img-fluid tm-gallery-img" />
          </figure>
        </article>
        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
          <figure>
            <img src="${contextPath}/resources/img/gallery/04.jpg" alt="Image" class="img-fluid tm-gallery-img" />
          </figure>
        </article>
        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
          <figure>
            <img src="${contextPath}/resources/img/gallery/05.jpg" alt="Image" class="img-fluid tm-gallery-img" />
          </figure>
        </article>
        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
          <figure>
            <img src="${contextPath}/resources/img/gallery/06.jpg" alt="Image" class="img-fluid tm-gallery-img" />
          </figure>
        </article>
        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
          <figure>
            <img src="${contextPath}/resources/img/gallery/07.jpg" alt="Image" class="img-fluid tm-gallery-img" />
          </figure>
        </article>
        <article class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
          <figure>
            <img src="${contextPath}/resources/img/gallery/08.jpg" alt="Image" class="img-fluid tm-gallery-img" />
          </figure>
        </article>
      </div> <!-- gallery page -->

    </div>
    <div class="tm-section tm-container-inner">
      <div class="row">
        <div class="col-md-6">
          <figure class="tm-description-figure"> </figure>
        </div>
        <div class="col-md-6"> </div>
      </div>
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