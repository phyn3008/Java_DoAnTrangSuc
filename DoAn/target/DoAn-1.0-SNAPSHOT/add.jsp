<%-- 
    Document   : addContact
    Created on : Sep 15, 2023, 1:19:36 PM
    Author     : Admin
--%>

<%@page import="dto.TrangSuc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="./nhanvien/Header.jsp" %>
<%@include file="./nhanvien/nav.jsp" %>

<% request.setCharacterEncoding("UTF-8");%>

<!--Xử lý thêm-->



<div class="container mt-4" id="main-content">
    <div class="row justify-content-center">
        <form action="QLTSServlet?btAction=Save" method="post" style="min-width: 300px;">
            <h5 class="text-center">Thêm Trang Sức</h5>

            <div class="mb-3">
                <label class="form-label">Tên Trang Sức</label>
                <input class="form-control" type="text" name="tenTS" required="Vui lòng nhập tên"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Đơn Giá</label>
                <input class="form-control" type="text" name="donGiaSP" value="0"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Trọng Lượng</label>
                <input class="form-control" type="text" name="trongLuong" value="0" />
            </div>
            <div class="mb-3">
                <label class="form-label">Hàm Lượng Chất Liệu</label>
                <input class="form-control" type="text" name="hamLuongChatLieu" value="0" />
            </div>
            <div class="mb-3">
                <label class="form-label">Loại Đá Chinh</label>
                <input class="form-control" type="text" name="loaiDaChinh" value="Không" />
            </div>
            <div class="mb-3">
                <label class="form-label">Loại Đá Phụ</label>
                <input class="form-control" type="text" name="loaiDaPhu"  value="Không"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Màu Đá</label>
                <input class="form-control" type="text" name="mauDa"  value="Không" />
            </div>
            <div class="mb-3">
                <label class="form-label">Số Viên Đá Chinh</label>
                <input class="form-control" type="text" name="soVienDaChinh"  value="0"/>
            </div>
             <div class="mb-3">
                <label class="form-label">Số Viên Đá Phụ</label>
                <input class="form-control" type="text" name="soVienDaPhu" value="0" />
            </div>
            <div class="mb-3">
                <label class="form-label">Bộ Sưu Tập</label>
                <input class="form-control" type="text" name="boSuuTap" value="Không" />
            </div>
            <div class="mb-3">
                <label class="form-label">Thương Hiệu</label>
                <input class="form-control" type="text" name="thuongHieu" value="Không" />
            </div>
            <div class="mb-3">
                <label class="form-label">Ngày Ra Mắt</label>
                <input class="form-control"  name="ngayRaMat" type="datetime" placeholder="dd/MM/yyyy"/>
            </div>
           <div class="mb-3">
              <label class="form-label">Giới Tính</label>
              <div style="width: 200px">
                  <input class="form-check-input" type="radio" name="gioiTinh" checked="true" value="true" />Nam 
                  <input class="form-check-input" type="radio" name="gioiTinh"   value="false"/>Nữ
              </div>
          </div>
            <div class="mb-3">
                <label class="form-label">Thông Tin Trang Sức</label>
                <input class="form-control" type="text" name="thongTinTS" value="Không" />
            </div>
            <div class="mb-3">
                <label class="form-label">Ghi Chú Trang Sức</label>
                <input class="form-control" type="text" name="ghiChuTS" value="Không" />
            </div>
           <div class="mb-3">
             <label class="form-label">Chất Liệu</label>
             <select class="form-control" name="maCL">
                 <option>--------Chọn Chất Liệu-------</option>
                 <c:forEach var="x" items="${lstCL}">
                     <option value="${x.maCL}" >${x.tenCL}</option>
                 </c:forEach>
             </select>
          </div>
            <div class="mb-3">
             <label class="form-label">Loại Trang Sức</label>
             <select class="form-control" name="maLoaiTS">
                 <option>--------Chọn Loại Trang Sức-------</option>
                 <c:forEach var="x" items="${lstLTS}">
                     <option value="${x.maLoaiTS}">${x.tenLoaiTS}</option>
                 </c:forEach>
             </select>
          </div>
            <div class="mb-3">
              <button type="submit" name="btnAction" value="Save" class="btn btn-block btn-primary">
              <i class="fa fa-save"></i> Save
            </button>
          </div>
        </form>
    </div>
</div>
<%@include file="./nhanvien/footer.jsp" %>