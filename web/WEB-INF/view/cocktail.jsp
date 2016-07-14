<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title">Перечень коктейлей</jsp:attribute>

    <jsp:body>
        <section class="order">
            <div class="container">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-2">
                            <jsp:include page="leftbar.jsp"/>
                        </div>
                        <div class="col-md-10">
                            <ol class="breadcrumb">
                                <i class="fa fa-location-arrow" aria-hidden="true"></i>
                                <li><a href="${pageContext.request.contextPath}/home">Главная</a>
                                </li>
                                <li class="cocktail">Перечень коктейлей</li>
                            </ol>
                            <section class="main_content">
                                <div class="text_item">
                                    <div class="row">
                                        <div align="center">
                                            <h1>Перечень коктейлей</h1>
                                            <table class="simple-little-table" cellspacing='0'>
                                                <th>№</th>
                                                <th>Название коктейля</th>
                                                <th>Первый компонент</th>
                                                <th>Второй компонент</th>
                                                <th>Третий компонент</th>
                                                <c:forEach var="cocktail" items="${cocktail}" varStatus="status">
                                                    <tr>
                                                        <td>${status.index + 1}</td>
                                                        <td>${cocktail.name}</td>
                                                        <td>${cocktail.nameFirstIngr}</td>
                                                        <td>${cocktail.nameSecondIngr}</td>
                                                        <td>${cocktail.nameThirdIngr}</td>
                                                    </tr>
                                                </c:forEach>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </jsp:body>
</page:template>