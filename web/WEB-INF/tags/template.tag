<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="headerTemplate" tagdir="/WEB-INF/tags" %>
<%@attribute name="title" fragment="true" %>
<%@attribute name="header" fragment="true" %>
<html>
<head>
    <title><jsp:invoke fragment="title"/></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <spring:url value="/resources/img/favicon.png" var="favicon"/>
    <link href="${favicon}" rel="shortcut icon"/>
    <!-- Bootstrap Core CSS -->
    <spring:url value="/resources/libs/bootstrap/bootstrap-grid-3.3.1.min.css" var="bootstrapmin"/>
    <link href="${bootstrapmin}" rel="stylesheet" />

    <!-- Custom CSS -->
    <spring:url value="/resources/css/main.css" var="startertemplate"/>
    <link href="${startertemplate}" rel="stylesheet" />

    <!-- Custom Fonts -->
    <spring:url value="/resources/libs/font-awesome-4.6.3/css/font-awesome.css" var="fontawesome"/>
    <link href="${fontawesome}" rel="stylesheet" />
    <spring:url value="/resources/css/fonts.css" var="fonts"/>
    <link href="${fonts}" rel="stylesheet" />

    <!-- jQuery -->
    <spring:url value="/resources/js/script.js" var="customjs"/>
    <script src="${customjs}"></script>
</head>

<body>

<headerTemplate:header-template/>

<div onclick="show('none')" id="wrap"></div>
<div id="window">
    <div id="login-form">
        <h1>АВТОРИЗАЦИЯ</h1>
        <fieldset>
            <div class="error_login">
                <c:if test="${not empty param.login_error}">
                    <span style="color: white;">
                    Неправильный логин или пароль, повторите еще раз!
                    </span>
                    <script type="text/javascript">show('block')</script>
                </c:if>
            </div>
            <form action="/j_index" method="post">
                <input type="text" name="j_username" required value="Логин" onBlur="if(this.value=='')this.value='Логин'" onFocus="if(this.value=='Логин')this.value='' ">
                <input type="password" name="j_password" required value="Пароль" onBlur="if(this.value=='')this.value='Пароль'" onFocus="if(this.value=='Пароль')this.value='' ">
                <input type="submit" value="ВОЙТИ">
            </form>
        </fieldset>
    </div>
</div>
<jsp:doBody/>

<footer class="footer_main">
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <div class="social_buttons">
                    <a href="#"><i class="fa fa-vk"></i></a>
                    <a href="#"><i class="fa fa-facebook-square"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                </div>
            </div>
            <div class="col-md-10">
                <div class="copirater">
                    ©2016 Cocktail-Hall
                </div>
            </div>
        </div>
    </div>
</footer>

</body>

</html>