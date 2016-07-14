<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<sec:authorize access="hasAnyRole('ADMIN', 'USER')">
<section class="left-saidbar">
    <ul>
        <li><a class="first_left_button" href="#">Мой профиль</a></li>
        <li><a href="#">Мои коктейли</a></li>
        <sec:authorize access="hasRole('ADMIN')">
        <li><a href="#">Добавить коктейль</a></li>
        <li><a href="#">Написать статью</a></li>
        </sec:authorize>
        <li><a class="last_left_button" onClick="showMessage();" href="/logout">Выход</a></li>
    </ul>
</section>
</sec:authorize>
<aside class="left_aside">
    <div class="content_aside">
        <h4>Недавние статьи</h4>
        <hr>
        <a href="/">Классификация коктейлей</a>
    </div>
</aside>
