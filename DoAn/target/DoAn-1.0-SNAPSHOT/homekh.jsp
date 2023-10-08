<%-- 
    Document   : homekh.jsp
    Created on : Sep 25, 2023, 6:48:40 PM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="./khachhang/Header.jsp"/>
<jsp:include page="./khachhang/nav.jsp"/>


<jsp:useBean id="dao" class="dao.HinhAnhDao"></jsp:useBean>
<jsp:useBean id="daokc" class="dao.KichCoDao"></jsp:useBean>
<jsp:useBean id="daots" class="dao.TrangSucDao"></jsp:useBean>

<section class="banner1">
    <img src="./assets/images/Banner/Banner_Bong_Tai_2.png" alt="banner1">
    <div class="downimg">
        <div id="downimg1">ĐẶC QUYỀN ƯU ĐÃI</div>
        <div id="line1"></div>
    </div>
    <img src="./assets/images/Banner/6.jpg" alt="banner2">
</section>
<section class="sanpham">
    <h1>SẢN PHẨM MỚI RA MẮT</h1>
    <div class="flex-container">
        <c:forEach var="ts" items="${lsttop4tn}">
            <a href="SanPhamServlet?mats=${ts.maTS}">
                <div class="sp">
                    <c:set var="hinh" value="${dao.getTop1(ts.maTS).getTenHinh()}"></c:set>
                        <!--<img src="assets/images/Nhan/1_1.png" alt=""/>-->
                        <img src="assets/images/Nhan/${hinh}" alt="Hình">
                    <h6>${ts.tenTS}</h6>
                    <div class="mausac">
                        <div id="tms" >Chất Liệu:</div>
                        <div class="ms" >${ts.maCL.tenCL}</div>
                    </div>
                    <div class="gbmain" >
                        <c:forEach var="kc" items="${daokc.getAllConSL(ts.maTS)}">
                            <div class="GB m5">${kc.getKichCo().getTenKC()}</div> 
                        </c:forEach>
                    </div>
                    <div class="giaban m5" >
                        <f:formatNumber var="dongiaSP" value="${ts.donGiaSP}" pattern="#,##0"></f:formatNumber>
                        ${dongiaSP}<u> đ</u>
                    </div>
    <!--                <div class="notegb" >Chiếu khấu 5.000.000 <u>đ</u> (giá gốc <del>${ts.donGiaSP} <u>đ</u></del>)</div>-->
                    <button>Mua ngay</button>
                </div>
            </a>
        </c:forEach>
    </div>
</section>
<section class="banner3">
    <h1>Ưu đãi 5% mua sắm kèm quà tặng</h1>
    <img src="./imgages/2023-08-20_132013.png" alt="">
</section>

<section class="menu">
    <nav>
        <div class="nav nav-tabs" id="nav-tab" role="tablist">
            <button class="nav-link active" id="nav-nhan-tab" data-bs-toggle="tab" data-bs-target="#nav-nhan"
                    type="button" role="tab" aria-controls="nav-nhan" aria-selected="true">Nhẫn</button>
            <button class="nav-link" id="nav-lac-tab" data-bs-toggle="tab" data-bs-target="#nav-lac"
                    type="button" role="tab" aria-controls="nav-lac" aria-selected="false">Lắc tay</button>
            <button class="nav-link" id="nav-vong-tab" data-bs-toggle="tab" data-bs-target="#nav-vong"
                    type="button" role="tab" aria-controls="nav-vong" aria-selected="false" >Vòng Cổ</button>
            <button class="nav-link" id="nav-bong-tab" data-bs-toggle="tab" data-bs-target="#nav-bong"
                    type="button" role="tab" aria-controls="nav-bong" aria-selected="false">Bông Tai</button>
        </div>
    </nav>
    <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="nav-nhan" role="tabpanel" aria-labelledby="nav-nhan-tab"
             tabindex="0">
            <div class="flex-container">
            <c:forEach var="ts" items="${daots.top4sp(1)}">
            <a href="SanPhamServlet?mats=${ts.maTS}">
                <div class="sp">
                    <c:set var="hinh" value="${dao.getTop1(ts.maTS).getTenHinh()}"></c:set>
                        <!--<img src="assets/images/Nhan/1_1.png" alt=""/>-->
                        <img src="assets/images/Nhan/${hinh}" alt="Hình">
                    <h6>${ts.tenTS}</h6>
                    <div class="mausac">
                        <div id="tms" >Chất Liệu:</div>
                        <div class="ms" >${ts.maCL.tenCL}</div>
                    </div>
                    <div class="gbmain" >
                        <c:forEach var="kc" items="${daokc.getAllConSL(ts.maTS)}">
                            <div class="GB m5">${kc.getKichCo().getTenKC()}</div> 
                        </c:forEach>
                    </div>
                    <div class="giaban m5" >
                        <f:formatNumber var="dongiaSP" value="${ts.donGiaSP}" pattern="#,##0"></f:formatNumber>
                        ${dongiaSP}<u> đ</u>
                    </div>
    <!--                <div class="notegb" >Chiếu khấu 5.000.000 <u>đ</u> (giá gốc <del>${ts.donGiaSP} <u>đ</u></del>)</div>-->
                    <button>Mua ngay</button>
                </div>
            </a>
        </c:forEach>
            </div>
        </div>
        <div class="tab-pane fade" id="nav-lac" role="tabpanel" aria-labelledby="nav-lac-tab"
             tabindex="0">
            <div class="flex-container">
                <c:forEach var="ts" items="${daots.top4sp(2)}">
            <a href="SanPhamServlet?mats=${ts.maTS}">
                <div class="sp">
                    <c:set var="hinh" value="${dao.getTop1(ts.maTS).getTenHinh()}"></c:set>
                        <!--<img src="assets/images/Nhan/1_1.png" alt=""/>-->
                        <img src="assets/images/LacTay/${hinh}" alt="Hình">
                    <h6>${ts.tenTS}</h6>
                    <div class="mausac">
                        <div id="tms" >Chất Liệu:</div>
                        <div class="ms" >${ts.maCL.tenCL}</div>
                    </div>
                    <div class="gbmain" >
                        <c:forEach var="kc" items="${daokc.getAllConSL(ts.maTS)}">
                            <div class="GB m5">${kc.getKichCo().getTenKC()}</div> 
                        </c:forEach>
                    </div>
                    <div class="giaban m5" >
                        <f:formatNumber var="dongiaSP" value="${ts.donGiaSP}" pattern="#,##0"></f:formatNumber>
                        ${dongiaSP}<u> đ</u>
                    </div>
    <!--                <div class="notegb" >Chiếu khấu 5.000.000 <u>đ</u> (giá gốc <del>${ts.donGiaSP} <u>đ</u></del>)</div>-->
                    <button>Mua ngay</button>
                </div>
            </a>
        </c:forEach>
            </div>
        </div>
        <div class="tab-pane fade" id="nav-vong" role="tabpanel" aria-labelledby="nav-vong-tab"
             tabindex="0">
            <div class="flex-container">
                <c:forEach var="ts" items="${daots.top4sp(3)}">
            <a href="SanPhamServlet?mats=${ts.maTS}">
                <div class="sp">
                    <c:set var="hinh" value="${dao.getTop1(ts.maTS).getTenHinh()}"></c:set>
                        <!--<img src="assets/images/Nhan/1_1.png" alt=""/>-->
                        <img src="assets/images/DayChuyen/${hinh}" alt="Hình">
                    <h6>${ts.tenTS}</h6>
                    <div class="mausac">
                        <div id="tms" >Chất Liệu:</div>
                        <div class="ms" >${ts.maCL.tenCL}</div>
                    </div>
                    <div class="gbmain" >
                        <c:forEach var="kc" items="${daokc.getAllConSL(ts.maTS)}">
                            <div class="GB m5">${kc.getKichCo().getTenKC()}</div> 
                        </c:forEach>
                    </div>
                    <div class="giaban m5" >
                        <f:formatNumber var="dongiaSP" value="${ts.donGiaSP}" pattern="#,##0"></f:formatNumber>
                        ${dongiaSP}<u> đ</u>
                    </div>
    <!--                <div class="notegb" >Chiếu khấu 5.000.000 <u>đ</u> (giá gốc <del>${ts.donGiaSP} <u>đ</u></del>)</div>-->
                    <button>Mua ngay</button>
                </div>
            </a>
        </c:forEach>
            </div>
        </div>
        <div class="tab-pane fade" id="nav-bong" role="tabpanel" aria-labelledby="nav-bong-tab"
             tabindex="0">
            <div class="flex-container">
                <c:forEach var="ts" items="${daots.top4sp(4)}">
            <a href="SanPhamServlet?mats=${ts.maTS}">
                <div class="sp">
                    <c:set var="hinh" value="${dao.getTop1(ts.maTS).getTenHinh()}"></c:set>
                        <!--<img src="assets/images/Nhan/1_1.png" alt=""/>-->
                        <img src="assets/images/HoaTai/${hinh}" alt="Hình">
                    <h6>${ts.tenTS}</h6>
                    <div class="mausac">
                        <div id="tms" >Chất Liệu:</div>
                        <div class="ms" >${ts.maCL.tenCL}</div>
                    </div>
                    <div class="gbmain" >
                        <c:forEach var="kc" items="${daokc.getAllConSL(ts.maTS)}">
                            <div class="GB m5">${kc.getKichCo().getTenKC()}</div> 
                        </c:forEach>
                    </div>
                    <div class="giaban m5" >
                        <f:formatNumber var="dongiaSP" value="${ts.donGiaSP}" pattern="#,##0"></f:formatNumber>
                        ${dongiaSP}<u> đ</u>
                    </div>
    <!--                <div class="notegb" >Chiếu khấu 5.000.000 <u>đ</u> (giá gốc <del>${ts.donGiaSP} <u>đ</u></del>)</div>-->
                    <button>Mua ngay</button>
                </div>
            </a>
        </c:forEach>
            </div>
        </div>
    </div>
</section>

<c:set var="g" value="${thanhcong}" scope="session"/>
<c:if test="g!=null">
    <script src="assets/js/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <script>
        toastr["success"]("${thanhcong}")
    </script>
</c:if>
<jsp:include page="./khachhang/footer.jsp"/>