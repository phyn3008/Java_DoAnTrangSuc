<%-- 
    Document   : ChiTietSanPham
    Created on : Sep 28, 2023, 10:23:01 AM
    Author     : Admin
--%>

<%@page import="dto.HinhAnh"%>
<%@page import="dto.TrangSuc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="./khachhang/Header.jsp" %>
<%@include file="./khachhang/nav.jsp" %>

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
                            <div class=<%= i==0?"carousel-item active":"carousel-item" %> >
                                <img src="${ddha}<%=ha.getTenHinh()%>" class="d-block w-100" alt="hinh1">
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
                    <h3>Thông Số Kỹ Thuật</h3>
                    <table>
                        <tr>
                            <th>Bộ Phận</th>
                            <th>Thông Tin</th>
                        </tr>
                        <tr>
                            <td>Màn hình</td>
                            <td>Phụ: 3.4 inch, Chính: 6.7 inch, Dynamic AMOLED 2X, FHD+, 2640 x 1080 Pixels</td>
                        </tr>
                        <tr>
                            <td>Camera sau</td>
                            <td>12.0 MP + 12.0 MP </td>
                        </tr>
                        <tr>
                            <td>Camera Selfie</td>
                            <td>10.0 MP </td>
                        </tr>
                        <tr>
                            <td>RAM</td>
                            <td>8 GB</td>
                        </tr>
                        <tr>
                            <td>Bộ nhớ trong</td>
                            <td>256 GB</td>
                        </tr>
                        <tr>
                            <td>CPU</td>
                            <td>Snapdragon 8 Gen 2</td>
                        </tr>
                        <tr>
                            <td>Dung lượng pin</td>
                            <td>3700 mAh</td>
                        </tr>
                        <tr>
                            <td>Thẻ sim</td>
                            <td>1 - 1 eSIM, 1 Nano SIM </td>
                        </tr>
                        <tr>
                            <td>Xuất xứ</td>
                            <td>Việt Nam </td>
                        </tr>
                        <tr>
                            <td>Thời gian ra mắt</td>
                            <td>08/2023</td>
                        </tr>
                    </table>
                    <div style="text-align: center;"><a href="#"
                                                        style="font-size: 14px; color: blue; text-align: center;"><u>Xem cấu hình chi tiết
                                <i class='fas fa-caret-right' style="color: blue;"></i></u></a></div>

                </div>
            </div>
            <div class="col-6">
                <div>
                    <div class="giatienban">${chitietts.donGiaSP}<u>đ</u></div>
                    <div class="giatiengoc"><del>${chitietts.donGiaSP}<u>đ</u></del></div>
                </div>
                <!--start KC-->
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                    <label class="form-check-label" for="inlineRadio1">1</label>
                </div>
                <!--end-->
                <div class="khuyenmai">
                    <div
                        style="font-weight: bold; border: 1px black solid; padding-left: 10px; border-bottom:none ;">
                        Nhận ngay khuyến mãi đặc biệt</div>
                    <div style="font-weight: bold; border: 1px black solid; padding-left: 10px;">
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Giảm ngay 5.500.000đ áp
                            dụng đến 05/09</div>
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Trả góp 0%</div>
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Tặng Samsung Care+ 6
                            tháng</div>
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Ưu đãi đặc quyền dành cho
                            Tân Sinh Viên: Giảm thêm 5% | Học sinh Sinh viên | Giáo Viên: Giảm thêm 3%</div>
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Thu cũ giảm thêm 3 triệu
                            áp dụng đến 05/09 + FPT Shop trợ giá thêm 15%</div>
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Trả góp 0% - trả trước 0đ
                            qua Samsung Finance+ tại S.Studio by FPT</div>
                        <div><i class='fas fa-check-circle' style='color: #48BB78'></i>Đặc quyền trả góp 0% thẻ
                            tín dụng đến 24 tháng qua Quà tặng Galaxy </div>
                    </div>
                </div>
                <button id="muangay">MUA NGAY</button>
                <button class="tragop">TRẢ GÓP 0%</button>
                <button class="tragop">TRẢ GÓP QUA THẺ</button>
                <div id="dgiansx">
                    <h5>Đánh Giá Chi Tiết Samsung Galaxy Z Flip5 5G</h5>
                    <p><b>Nhập hội linh hoạt cùng Samsung Galaxy Z Flip 5, bạn sẽ trải nghiệm loạt công nghệ đột
                            phá đầy thú vị và thiết kế độc đáo hoàn toàn mới. Nơi bạn có thể thỏa thích khám phá
                            và tự tin thể hiện gu cá tính. Sự nhỏ gọn, vừa vặn và tính thời trang của Z Flip 5
                            còn giúp bạn thật nổi bật và sẵn sàng “cân” mọi phong cách yêu thích.</b></p>
                    <img src="./img//hinh1.png" alt="hinh1">
                    <h6 style="margin-top: 5px; text-align: left; color: blue; font-weight: bold;">Màn hình
                        ngoài lớn nhất từ trước đến nay</h6>
                    <p><b>Gặp gỡ thế hệ Samsung Galaxy Z Flip thứ 5, bạn sẽ bất ngờ với màn hình ngoài được nâng
                            cấp mạnh mẽ. Samsung đã cải tiến màn hình ngoài từ 1.9 inch lên tới 3.4 inch, mở
                            rộng không gian tối đa, đảm bảo tính đa năng và tiện lợi. Các chi tiết hiển thị rõ
                            ràng, xem được nhiều thông tin và thực hiện nhiều tác vụ ngay trong tầm tay mà không
                            cần mở điện thoại.</b></p>
                    <img src="./img//hinh4.png" alt="hinh1">
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
            <i class='fas fa-check-circle' style='color: #48BB78'> Đã mua tại FPTShop</i>
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
            <i class='fas fa-check-circle' style='color: #48BB78'> Đã mua tại FPTShop</i>
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
            <i class='fas fa-check-circle' style='color: #48BB78'> Đã mua tại FPTShop</i>
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
            <i class='fas fa-check-circle' style='color: #48BB78'> Đã mua tại FPTShop</i>
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
            <i class='fas fa-check-circle' style='color: #48BB78'> Đã mua tại FPTShop</i>
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
            <i class='fas fa-check-circle' style='color: #48BB78'> Đã mua tại FPTShop</i>
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