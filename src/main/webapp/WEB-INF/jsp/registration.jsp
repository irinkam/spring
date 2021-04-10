<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Зарегистрироваться</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/animate/animate.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/animsition/css/animsition.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/select2/select2.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/daterangepicker/daterangepicker.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/util.css">
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main.css">
  <!--===============================================================================================-->
</head>
<body>

<div class="limiter">
  <div class="container-login100">
    <div class="wrap-login100">
      <div class="login100-form-title" style="background-image: url('${contextPath}/resources/images/bg-01.jpg');">
					<span class="login100-form-title-1">
						Зарегистрироваться
					</span>
      </div>

      <form:form class="login100-form" method="POST" modelAttribute="userForm">
        <div class="wrap-input100 validate-input m-b-26">
          <span class="label-input100">Имя пользователя</span>
          <form:input class="input100" type="text" path="username" placeholder="Введите имя пользователя"
                      autofocus="true"/>
          <form:errors path="username"/>
          ${usernameError}
          <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100 validate-input m-b-18">
          <span class="label-input100">Имя</span>
          <form:input class="input100" type="text" path="firstName" placeholder="Имя"/>
          <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100 validate-input m-b-18">
          <span class="label-input100">E-mail</span>
          <form:input class="input100" type="text" path="email" placeholder="E-mail"/>
          <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100 validate-input m-b-18">
          <span class="label-input100">Пароль</span>
          <form:input class="input100" type="password" path="password" placeholder="Введите пароль"/>
          <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100 validate-input m-b-18">
          <span class="label-input100">Подтвердите пароль</span>
          <form:input class="input100" type="password" path="passwordConfirm" placeholder="Подтвердите пароль"/>
          ${passwordError}
          <span class="focus-input100"></span>
        </div>

        <div class="container-login100-form-btn">
          <button class="login100-form-btn">
            Login
          </button>
        </div>
      </form:form>

    </div>
  </div>
</div>

<!--===============================================================================================-->
<script src="${contextPath}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="${contextPath}/resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="${contextPath}/resources/vendor/bootstrap/js/popper.js"></script>
<script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="${contextPath}/resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="${contextPath}/resources/vendor/daterangepicker/moment.min.js"></script>
<script src="${contextPath}/resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="${contextPath}/resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="${contextPath}/resources/js/main.js"></script>

</body>
</html>