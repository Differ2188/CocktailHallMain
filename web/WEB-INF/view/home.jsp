<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<page:template>

    <jsp:attribute name="title">Cocktail-Hall</jsp:attribute>

    <jsp:body>

        <section class="order">
            <div class="container">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-2">
                            <jsp:include page="/WEB-INF/view/leftbar.jsp"/>
                        </div>
                        <div class="col-md-10">
                            <ol class="breadcrumb">
                                <i class="fa fa-location-arrow" aria-hidden="true"></i>
                                <li><a href="${pageContext.request.contextPath}/home">Главная</a></li>
                            </ol>
                            <section class="main_content">
                                <div class="text_item">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h2> <a href="#">Классификация коктейлей</a></h2>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="text_img">
                                                <a href="#"><img src="${pageContext.request.contextPath}/resources/img/3.jpg" alt=""></a>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="text_con" align="justify" >
                                                <p>Некоторые классификации пытаются охватить и разделить на группы все существующие в мире коктейли. Ведь, если подвергнуть классификации все смешанные напитки, то их категорий окажется не меньше, чем самих коктейлей.<br>
                                                </p>
                                                <p>
                                                    Тем не менее можно выделить несколько основных групп смешанных напитков. Следует иметь в виду, что каждый коктейль может одновременно относиться к нескольким из этих групп.
                                                </p>
                                                <h3>Классификация коктейлей по размеру и крепости</h3>
                                                Согласно размеру и крепости выделяют следующие группы коктейлей:
                                                <ol>
                                                    <li><strong>Hot Drinks (Хот дринкс)</strong> - горячие напитки. Могут иметь разный объем (от 6 сантилитров и более) и разную крепость (от 12 до 35%).</li>
                                                    <li><strong>Long Drinks (Лонг дринкс)</strong> - длинные напитки. Содержат от 16 до 30 сантилитров (их крепость от 7 до 17%).</li>
                                                    <li><strong>Short Drinks (Шорт дринкс)</strong> - короткие напитки. Содержат от 6 до 16 сантилитров (их крепость 17-45%).</li>
                                                    <li><strong>Shot Drinks (Шот дринкс)</strong> - стреляющие напитки, или напитки-«глотки». Содержат от 4 до 6 сантилитров (крепость может быть разной), пьются залпом. Их также могут называть shooters (шутеры). «Предок» сегодняшнего шутера - это рюмка водки!</li>
                                                </ol>
                                            </div>
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