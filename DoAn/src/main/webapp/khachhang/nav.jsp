<%-- 
    Document   : nav
    Created on : Sep 25, 2023, 7:48:20 AM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
        <div class="header__top d-flex justify-content-between align-items-center container-fluid ">
            <div class="header__left col-8">
                <nav class="navbar navbar-expand-lg ">
                    <div class="container-fluid col-3 logo">
                        <a class="navbar-brand logobrand" href="#">LUXURY DIAMOND</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                    </div>
                    <div class="container-fluid navbar-brand col-9 listtd" id="navbarNavAltMarkup">
                        <div class="navbar-nav listtd1">
                            <a class="nav-link" aria-current="page" href="#">Ưu Đãi</a>
                            <!--<a class="nav-link" href="#">Nhẫn</a>-->
                            <c:forEach var="sp" items="${lstLoaiTS}">
                                <a class="nav-link" href="HomeServlet?maloaiTS=${sp.maLoaiTS}">${sp.tenLoaiTS}</a>
                            </c:forEach>
                        </div>
                        <div class="navbar-nav listtd2">
                            <a class="nav-link" href="#">Hỗ Trợ</a>
                            <a class="nav-link" href="#">Doanh Nghiệp</a>
                        </div>
                    </div>
                </nav>
            </div>
        <div class="header__right col-4">
            <div style="float: left;">
                <input type="text" class="form-control" id="text-search"
                placeholder="Tìm Kiếm ...">
            </div>
            <div style="float: right;">
                <a href="logout.jsp"><i class="bi bi-card-text"></i></a>
                <a href="#"><i class="fab bi bi-cart3"></i></a>
                <a href="login.jsp">${tdn}<i class="bi bi-person-fill"></i></a>
            </div>

        </div>
    </div>
</header>
