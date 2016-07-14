<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<header class="top_header">
    <div class="header_topline">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="logotip">
                        <a href="#"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt=""></a>
                    </div>
                    <div class="logotext">
                        <a href="#">Cocktail-Hall</a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="top_links">
                        <sec:authorize access="hasRole('ADMIN')">
                            Hello Admin!
                        </sec:authorize>
                        <sec:authorize access="hasRole('USER')">
                            Hello User!
                        </sec:authorize>
                        <sec:authorize ifNotGranted="IS_AUTHENTICATED_ANONYMOUSLY">
                            <a onclick="show('block')" href="#">Вход</a> /
                            <a href="#">Регистрация</a>
                        </sec:authorize>
                    </div>
                    <button class="auth_buttons_new_user hidden-lg hidden-md hidden-sm">
                        <i class="fa fa-user-plus" aria-hidden="true"></i>
                    </button>
                    <button class="auth_buttons_registration hidden-lg hidden-md hidden-sm">
                        <i class="fa fa-sign-in" aria-hidden="true"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="menu_bar">
        <div class="container">
            <div class="col-md-12">
                <div class="main_menu clearfix">
                    <nav >
                        <button class="button_menu hidden-lg hidden-md hidden-sm"><i class="fa fa-bars" aria-hidden="true	"></i></button>
                        <div class="nav_bar">
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}/">Главная</a></li>
                                <li><a href="cocktail">Перечень коктейлей</a></li>
                                <li><a href="#">Новые коктейли</a></li>
                                <li><a href="#">Песочница</a></li>
                                <li><a href="#">О Сайте</a></li>
                            </ul>
                        </div>
                        <div class="from_site">
                            <form action="" method="post" class="search">
                                <input type="search" name="" placeholder="Поиск" class="input" />
                                <input type="submit" name="" value="" class="submit" />
                            </form>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>