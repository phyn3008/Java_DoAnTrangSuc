<%-- 
    Document   : ChiTietSanPham
    Created on : Sep 28, 2023, 10:23:01 AM
    Author     : Admin
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dto.HinhAnh"%>
<%@page import="dto.TrangSuc"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="./khachhang/Header.jsp" %>
<%@include  file="./khachhang/nav.jsp" %>
<jsp:useBean id="dao" class="dao.HinhAnhDao"></jsp:useBean>
<jsp:useBean id="daokc" class="dao.KichCoDao"></jsp:useBean>

<section class="thongtin">
    <div class="heading">
        <h2>${chitietts.tenTS}</h2>
    </div>
    <div class="news__content container">
        <div class="row">
            <div class="col-6">
                <section class="cyberCarousel">
                    <div id="carouselCyber" class="carousel slide">
                        <ol class="carousel-indicators">
<!--                            <li data-target="#carouselCyber" data-slide-to="0" class="active"></li>-->
                            <%
                                Object ctts= request.getAttribute("chitietts");
                                TrangSuc ts= (TrangSuc)ctts;
                                for(int i=0;i<dao.getAll(ts.getMaTS()).size();i++){
                            %>
                            <li data-target="#carouselCyber" data-slide-to="<%=i%>" class=<%= i==0?"active":"" %> ></li>
                            <%
                                }
                            %>    

                            
                        </ol>
                        <div class="carousel-inner">         
                            <% 
                                    for(int i=0;i<dao.getAll(ts.getMaTS()).size();i++){
                                    HinhAnh ha= dao.getAll(ts.getMaTS()).get(i);
                            %>
                            
                            <div class="<%= i==0?"carousel-item active":"carousel-item" %>" >
                                <img src="${ddha}<%=ha.getTenHinh()%>" alt="Hinh<%=i%>"/>
                            </div>
                            <%
                                } 
                            %>
                        </div>
                        <a class="carousel-control-prev" href="#carouselCyber" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselCyber" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </section>
                <div id="dthoai">Gọi <a href="#">1800-6601</a> để được tư vấn mua hàng (Miễn phí)</div>
                <div class="thongsokythuat">
                    <h3>Thông Số Và Mô Tả</h3>
                    <table>
                        
                        <tr>
                            <th>Thông Số</th>
                            <th>Mô tả</th>
                        </tr>
                        <c:if test="${chitietts.trongLuong!=null}">
                        <tr>
                            <td>Trọng lượng tham khảo</td>
                            <td>${chitietts.trongLuong}</td>
                        </tr>
                        </c:if>
                        <c:if test="${chitietts.hamLuongChatLieu!=null}">
                        <tr>
                            <td>Hàm lượng chất liệu:</td>
                            <td>${chitietts.hamLuongChatLieu}</td>
                        </tr>
                        </c:if>
                        <c:if test="${chitietts.loaiDaChinh!=null}">
                        <tr>
                            <td>Loại đá chính:</td>
                            <td>${chitietts.loaiDaChinh}</td>
                        </tr>
                        </c:if>
                        <c:if test="${chitietts.loaiDaPhu!=null}">
                        <tr>
                            <td>Loại đá phụ:</td>
                            <td>${chitietts.loaiDaPhu}</td>
                        </tr>
                        </c:if>
                        <c:if test="${chitietts.mauDa!=null}">
                        <tr>
                            <td>Màu đá:</td>
                            <td>${chitietts.mauDa}</td>
                        </tr>
                        </c:if>
                        <c:if test="${chitietts.soVienDaChinh!=null}">
                        <tr>
                            <td>Số viên đá chính:</td>
                            <td>${chitietts.soVienDaChinh}</td>
                        </tr>
                        </c:if>
                        <c:if test="${chitietts.soVienDaPhu!=null}">
                        <tr>
                            <td>Số viên đá phụ:</td>
                            <td>${chitietts.soVienDaPhu}</td>
                        </tr>
                        </c:if>
                        <c:if test="${chitietts.boSuuTap!=null}">
                        <tr>
                            <td>Bộ sưu tập</td>
                            <td>${chitietts.boSuuTap}</td>
                        </tr>
                        </c:if>
                        <c:if test="${chitietts.thuongHieu!=null}">
                        <tr>
                            <td>Thương Hiệu:</td>
                            <td>${chitietts.thuongHieu}</td>
                        </tr>
                        </c:if>
                        <c:if test="${chitietts.gioiTinh!=null}">
                        <tr>
                            <td>Giới Tính:</td>
                            <td>${chitietts.gioiTinh?"Nam":"Nữ"}</td>
                        </tr>
                        </c:if>
                        <c:if test="${chitietts.ngayRaMat!=null}">
                        <tr>
                            <%
                                Date date= new Date();
                                date= ts.getNgayRaMat();
                                DateFormat dateformate= null;
                                dateformate = new SimpleDateFormat("dd/MM/yyyy");
                                String ngayramat= dateformate.format(date);
                            %>
                            <td>Ngày Ra Mắt:</td>
                            <td><%= ngayramat %></td>
                        </tr>
                        </c:if>
                    </table>

                </div>
            </div>
            <div class="col-6">
                <div>
                    <%
                        Locale localeVN = new Locale("vi", "VN");
                        NumberFormat currencyVN = NumberFormat.getCurrencyInstance(localeVN);
                    %>
                    <div class="giatienban"><%= currencyVN.format(ts.getDonGiaSP()) %></div>
                    <div class="giatiengoc"><del><%= currencyVN.format(ts.getDonGiaSP()) %></div>
                </div>
                <!--start KC-->
                <div class="mb-2">Kích Cỡ: </div>
                <c:forEach var="kc" items="${daokc.getAllConSL(chitietts.maTS)}">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                            <label class="form-check-label" for="inlineRadio1">${kc.getKichCo().getTenKC()}</label>
                        </div>
                </c:forEach>
                <!--end-->
                <div class="khuyenmai">
                    <div
                        style="font-weight: bold; border: 1px black solid; padding-left: 10px; border-bottom:none ;">
                        Nhận ngay khuyến mãi đặc biệt</div>
                    <div style="font-weight: bold; border: 1px black solid; padding-left: 10px;">
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Giảm ngay 350.000 áp
                            dụng đến 10/10</div>
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Trả góp 0%</div>
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Sửa chửa suốt đời</div>
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Ưu đãi đặc quyền dành cho
                            Khách Hàng Thường Xuyên: Giảm thêm 5%</div>
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Thu cũ sát giá và hỗ trợ mua lại với giá hợp lý</div>
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Trả góp 0% - trả trước 0đ
                            qua thẻ tín dụng/Ví MoMo</div>
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Đặc quyền trả góp 0% thẻ
                            tín dụng đến 24 tháng qua Quà tặng Luxury </div>
                    </div>
                </div>
                <button id="muangay">MUA NGAY</button>
                <button class="tragop">TRẢ GÓP 0%</button>
                <button class="tragop">TRẢ GÓP QUA THẺ</button>
                <div id="dgiansx">
                    <h5>Đánh Giá Chi Tiết ${chitietts.tenTS} </h5>
                    <p><b>${chitietts.thongTinTS==null?"Không có đánh giá nào":chitietts.thongTinTS}</b></p>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="danhgia container">
    <h3>ĐÁNH GIÁ SẢN PHẨM</h3>
    <div id="dgiacuaban">
        <input type="text" placeholder="Đánh giá ở đây ...">
        <div class="stars">
            <form action="">
                <input class="star star-5" id="star-5" type="radio" name="star" />
                <label class="star star-5" for="star-5"></label>
                <input class="star star-4" id="star-4" type="radio" name="star" />
                <label class="star star-4" for="star-4"></label>
                <input class="star star-3" id="star-3" type="radio" name="star" />
                <label class="star star-3" for="star-3"></label>
                <input class="star star-2" id="star-2" type="radio" name="star" />
                <label class="star star-2" for="star-2"></label>
                <input class="star star-1" id="star-1" type="radio" name="star" />
                <label class="star star-1" for="star-1"></label>
            </form>
        </div>
    </div>
    <div class="guidgia">
        <label for="dgiacuaban">Bạn đã sử dụng sản phẩm này?</label>
        <button>GỬI ĐÁNH GIÁ</button>
    </div>
    <div style="height:50px;background-color:  white;border: 2px solid white;line-height: 50px;"><b>Các đánh giá
            khác:</b></div>
    <div class="cacdanhgia">
        <div class="tenkh">
            <h6>VÕ THỊ HUYỀN TRANG</h6>
            <i class='fas fa-check-circle' style='color: #48BB78'> Đã mua tại Luxury Diamond</i>
        </div>
        <div class="stars">
            <form action="">
                <input class="star star-5" id="star-5" type="radio" name="star" />
                <label class="star star-5" for="star-5"></label>
                <input class="star star-4" id="star-4" type="radio" name="star" />
                <label class="star star-4" for="star-4"></label>
                <input class="star star-3" id="star-3" type="radio" name="star" />
                <label class="star star-3" for="star-3"></label>
                <input class="star star-2" id="star-2" type="radio" name="star" />
                <label class="star star-2" for="star-2"></label>
                <input class="star star-1" id="star-1" type="radio" name="star" />
                <label class="star star-1" for="star-1"></label>
            </form>
        </div>
        <p>Mình đánh giá sản phẩm tốt, nhân viên tư vấn dễ thương nhiệt tình </p>
        <i class='far fa-thumbs-up' style="color: blue;">Thích </i>
        <i class='fas fa-genderless' style="color: blue;"> Trả Lời</i>
    </div>
    <div class="cacdanhgia">
        <div class="tenkh">
            <h6>VÕ THỊ HUYỀN TRANG</h6>
            <i class='fas fa-check-circle' style='color: #48BB78'> Đã mua tại Luxury Diamond</i>
        </div>
        <div class="stars">
            <form action="">
                <input class="star star-5" id="star-5" type="radio" name="star" />
                <label class="star star-5" for="star-5"></label>
                <input class="star star-4" id="star-4" type="radio" name="star" />
                <label class="star star-4" for="star-4"></label>
                <input class="star star-3" id="star-3" type="radio" name="star" />
                <label class="star star-3" for="star-3"></label>
                <input class="star star-2" id="star-2" type="radio" name="star" />
                <label class="star star-2" for="star-2"></label>
                <input class="star star-1" id="star-1" type="radio" name="star" />
                <label class="star star-1" for="star-1"></label>
            </form>
        </div>
        <p>Mình đánh giá sản phẩm tốt, nhân viên tư vấn dễ thương nhiệt tình </p>
        <i class='far fa-thumbs-up' style="color: blue;">Thích </i>
        <i class='fas fa-genderless' style="color: blue;"> Trả Lời</i>
    </div>
    <div class="cacdanhgia">
        <div class="tenkh">
            <h6>VÕ THỊ HUYỀN TRANG</h6>
            <i class='fas fa-check-circle' style='color: #48BB78'> Đã mua tại Luxury Diamond</i>
        </div>
        <div class="stars">
            <form action="">
                <input class="star star-5" id="star-5" type="radio" name="star" />
                <label class="star star-5" for="star-5"></label>
                <input class="star star-4" id="star-4" type="radio" name="star" />
                <label class="star star-4" for="star-4"></label>
                <input class="star star-3" id="star-3" type="radio" name="star" />
                <label class="star star-3" for="star-3"></label>
                <input class="star star-2" id="star-2" type="radio" name="star" />
                <label class="star star-2" for="star-2"></label>
                <input class="star star-1" id="star-1" type="radio" name="star" />
                <label class="star star-1" for="star-1"></label>
            </form>
        </div>
        <p>Mình đánh giá sản phẩm tốt, nhân viên tư vấn dễ thương nhiệt tình </p>
        <i class='far fa-thumbs-up' style="color: blue;">Thích </i>
        <i class='fas fa-genderless' style="color: blue;"> Trả Lời</i>
    </div>
    <div class="cacdanhgia">
        <div class="tenkh">
            <h6>VÕ THỊ HUYỀN TRANG</h6>
            <i class='fas fa-check-circle' style='color: #48BB78'> Đã mua tại Luxury Diamond</i>
        </div>
        <div class="stars">
            <form action="">
                <input class="star star-5" id="star-5" type="radio" name="star" />
                <label class="star star-5" for="star-5"></label>
                <input class="star star-4" id="star-4" type="radio" name="star" />
                <label class="star star-4" for="star-4"></label>
                <input class="star star-3" id="star-3" type="radio" name="star" />
                <label class="star star-3" for="star-3"></label>
                <input class="star star-2" id="star-2" type="radio" name="star" />
                <label class="star star-2" for="star-2"></label>
                <input class="star star-1" id="star-1" type="radio" name="star" />
                <label class="star star-1" for="star-1"></label>
            </form>
        </div>
        <p>Mình đánh giá sản phẩm tốt, nhân viên tư vấn dễ thương nhiệt tình </p>
        <i class='far fa-thumbs-up' style="color: blue;">Thích </i>
        <i class='fas fa-genderless' style="color: blue;"> Trả Lời</i>
    </div>
    <div class="cacdanhgia">
        <div class="tenkh">
            <h6>VÕ THỊ HUYỀN TRANG</h6>
            <i class='fas fa-check-circle' style='color: #48BB78'> Đã mua tại Luxury Diamond</i>
        </div>
        <div class="stars">
            <form action="">
                <input class="star star-5" id="star-5" type="radio" name="star" />
                <label class="star star-5" for="star-5"></label>
                <input class="star star-4" id="star-4" type="radio" name="star" />
                <label class="star star-4" for="star-4"></label>
                <input class="star star-3" id="star-3" type="radio" name="star" />
                <label class="star star-3" for="star-3"></label>
                <input class="star star-2" id="star-2" type="radio" name="star" />
                <label class="star star-2" for="star-2"></label>
                <input class="star star-1" id="star-1" type="radio" name="star" />
                <label class="star star-1" for="star-1"></label>
            </form>
        </div>
        <p>Mình đánh giá sản phẩm tốt, nhân viên tư vấn dễ thương nhiệt tình </p>
        <i class='far fa-thumbs-up' style="color: blue;">Thích </i>
        <i class='fas fa-genderless' style="color: blue;"> Trả Lời</i>
    </div>
    <div class="cacdanhgia">
        <div class="tenkh">
            <h6>VÕ THỊ HUYỀN TRANG</h6>
            <i class='fas fa-check-circle' style='color: #48BB78'> Đã mua tại Luxury Diamond</i>
        </div>
        <div class="stars">
            <form action="">
                <input class="star star-5" id="star-5" type="radio" name="star" />
                <label class="star star-5" for="star-5"></label>
                <input class="star star-4" id="star-4" type="radio" name="star" />
                <label class="star star-4" for="star-4"></label>
                <input class="star star-3" id="star-3" type="radio" name="star" />
                <label class="star star-3" for="star-3"></label>
                <input class="star star-2" id="star-2" type="radio" name="star" />
                <label class="star star-2" for="star-2"></label>
                <input class="star star-1" id="star-1" type="radio" name="star" />
                <label class="star star-1" for="star-1"></label>
            </form>
        </div>
        <p>Mình đánh giá sản phẩm tốt, nhân viên tư vấn dễ thương nhiệt tình </p>
        <i class='far fa-thumbs-up' style="color: blue;">Thích </i>
        <i class='fas fa-genderless' style="color: blue;"> Trả Lời</i>
    </div>
</section>
<%@include file="./khachhang/footer.jsp" %>