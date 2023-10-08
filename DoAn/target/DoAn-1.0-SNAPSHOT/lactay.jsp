<%-- 
    Document   : sanpham
    Created on : Sep 24, 2023, 7:07:27 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="./khachhang/Header.jsp" %>
<%@include file="./khachhang/nav.jsp" %>

<jsp:useBean id="dao" class="dao.HinhAnhDao"></jsp:useBean>
<jsp:useBean id="daokc" class="dao.KichCoDao"></jsp:useBean>
    <section class="banner1">
        <img src="assets/images/Banner/banner_Lac_3.jpg" alt="banner1">
    </section>

    <section class="sanpham">
        <h1>MUA SẮM</h1>
        <div class="flex-container">
        <c:forEach var="ts" items="${lsttrangsuc}">
            <a href="SanPhamServlet?mats=${ts.maTS}">
                <div class="sp">
                    <c:set var="hinh" value="${dao.getTop1(ts.maTS).getTenHinh()}"></c:set>
                        <!--<img src="assets/images/Nhan/1_1.png" alt=""/>-->
                        <img src="assets/images/LacTay/${hinh}" alt="Hình">
                    <h6>${ts.tenTS}</h6>
                    <div class="mausac">
                        <div id="tms">Chất Liệu:</div>
                        <div class="ms">${ts.maCL.tenCL}</div>
                    </div>
                    <div class="gbmain">
                    <c:forEach var="kc" items="${daokc.getAllConSL(ts.maTS)}">
                        <div class="GB m5">${kc.getKichCo().getTenKC()}</div> 
                    </c:forEach>
                    </div>
                    <div class="giaban m5">
                       <f:formatNumber var="dongiaSP" value="${ts.donGiaSP}" pattern="#,##0"></f:formatNumber>
                        ${dongiaSP}<u> đ</u>
                    </div>
                    <!--<div class="notegb">Chiếu khấu 5.000.000 <u>đ</u> (giá gốc <del>${ts.donGiaSP} <u>đ</u></del>)</div>-->
                    <button>Mua ngay</button>
                </div>
            </a>
        </c:forEach>
    </div>
</section>
<section class="news section">
    <div class="heading">
        <h1>THÔNG TIN</h1>
    </div>
    <div class="news__content container">
        <div class="row">
            <div class="col-7">
                <img class="img-fluid" src="assets/images/Banner/banner_Lac._2.jpg" alt="">
            </div>
            <div class="col-5">
                <h3><a href="#" data-toggle="modal" data-target="#cyberModal">Nhận 1.200.000đ — 19.100.000đ dưới hình thức điểm tín dụng để mua iPhone 14 hoặc iPhone 14 Pro khi bạn trao đổi iPhone 7 trở lên.*</a></h3>
                <h6>28/08/2012</h6>
                <a href="#"><h4>Xem Thiết Bị Của Bạn Đáng Gía Bao Nhiêu<span> ></span></h4></a>
            </div>
        </div>
        <div class="row">
            <div class="col-5">
                <h3><a href="#" data-toggle="modal" data-target="#cyberModal">Trả với lãi suất thấp, thời hạn thanh toán lên đến 24 tháng.</a></h3>
                <h6>03/01/2021</h6>
                <p>Khoản thanh toán hàng tháng thấp và chỉ cần trả trước 20% khi bạn chọn Trả Góp Hàng Tháng với MoMo.</p>
                <a href="#"><h4>Tìm Hiểu Thêm<span> ></span></h4></a>
            </div>
            <div class="col-7">
                <img class="img-fluid" src="assets/images/Banner/banner_Lac.jpg" alt="">
            </div>
        </div>
    </div>
</section>
<%@include file="./khachhang/footer.jsp" %>