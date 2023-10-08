<%-- 
    Document   : addContact
    Created on : Sep 15, 2023, 1:19:36 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="./nhanvien/Header.jsp" %>
<%@include file="./nhanvien/nav.jsp" %>

<% request.setCharacterEncoding("UTF-8"); %>

<div class="container mt-4" id="main-content">
      <div class="row justify-content-center">
          <form action="QLTSServlet?btAction=Update" style="min-width: 300px;" method="post" >
          <h5 class="text-center">Edit Trang Sức</h5>
          <input type="hidden" name="maTS" value="${ts.maTS}"/>
           <div class="mb-3">
                <label class="form-label">Tên Trang Sức</label>
                <input class="form-control" type="text" name="tenTS" value="${ts.tenTS}"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Đơn Giá</label>
                <input class="form-control" type="text" name="donGiaSP"  value="${ts.donGiaSP}"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Trọng Lượng</label>
                <input class="form-control" type="text" name="trongLuong" value="${ts.trongLuong}" />
            </div>
            <div class="mb-3">
                <label class="form-label">Hàm Lượng Chất Liệu</label>
                <input class="form-control" type="text" name="hamLuongChatLieu" value="${ts.hamLuongChatLieu==null?0:ts.hamLuongChatLieu}" />
            </div>
            <div class="mb-3">
                <label class="form-label">Loại Đá Chinh</label>
                <input class="form-control" type="text" name="loaiDaChinh"  value="${ts.loaiDaChinh==null?"Không gắn đá":ts.loaiDaChinh}"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Loại Đá Phụ</label>
                <input class="form-control" type="text" name="loaiDaPhu" value="${ts.loaiDaPhu==null?"Không gắn đá":ts.loaiDaPhu}" />
            </div>
            <div class="mb-3">
                <label class="form-label">Màu Đá</label>
                <input class="form-control" type="text" name="mauDa"value="${ts.mauDa==null?"Không":ts.mauDa}" />
            </div>
           <div class="mb-3">
                <label class="form-label">Số Viên Đá Chinh</label>
                <input class="form-control" type="text" name="soVienDaChinh"  value="${ts.soVienDaChinh==null?0:ts.soVienDaChinh}"/>
            </div>
             <div class="mb-3">
                <label class="form-label">Số Viên Đá Phụ</label>
                <input class="form-control" type="text" name="soVienDaPhu"  value="${ts.soVienDaPhu==null?0:ts.soVienDaPhu}"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Bộ Sưu Tập</label>
                <input class="form-control" type="text" name="boSuuTap" value="${ts.boSuuTap==null?"Không":ts.boSuuTap}" />
            </div>
            <div class="mb-3">
                <label class="form-label">Thương Hiệu</label>
                <input class="form-control" type="text" name="thuongHieu"  value="${ts.thuongHieu==null?"Không":ts.thuongHieu}"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Ngày Ra Mắt</label>
                <f:formatDate var="ngayramat" value="${ts.ngayRaMat}" pattern="MM/dd/yyyy" /> 
                <input class="form-control"  name="ngayRaMat" value="${ngayramat}" type="datetime"/>
            </div>
           <div class="mb-3">
              <label class="form-label">Giới Tính</label>
              <div>
                  <input class="form-check-input" type="radio" name="gioiTinh" ${ts.gioiTinh==true?"checked":""} />Nam
                  <input class="form-check-input" type="radio" name="gioiTinh" ${ts.gioiTinh==false?"checked":""}/>Nữ
              </div>
          </div>
            <div class="mb-3">
                <label class="form-label">Thông Tin Trang Sức</label>
                <input class="form-control" type="text" name="thongTinTS" value="${ts.thongTinTS==null?"Không":ts.thongTinTS}" />
            </div>
            <div class="mb-3">
                <label class="form-label">Ghi Chú Trang Sức</label>
                <input class="form-control" type="text" name="ghiChuTS" value="${ts.ghiChuTS==null?"Không":ts.ghiChuTS}" />
            </div>
            <div class="mb-3">
             <label class="form-label">Chất Liệu</label>
             <select class="form-control" name="maCL">
                 <option>--------Chọn Chất Liệu-------</option>
                 <c:forEach var="x" items="${lstCL}">
                     <option value="${x.maCL}" ${x.maCL==ts.maCL.maCL?"selected":""} >${x.tenCL}</option>
                 </c:forEach>
             </select>
          </div>
            <div class="mb-3">
             <label class="form-label">Loại Trang Sức</label>
             <select class="form-control" name="maLoaiTS">
                 <option>--------Chọn Loại Trang Sức-------</option>
                 <c:forEach var="x" items="${lstLoaiTS}">
                     <option value="${x.maLoaiTS}" ${x.maLoaiTS==ts.maLoaiTS.maLoaiTS?"selected":""}>${x.tenLoaiTS}</option>
                 </c:forEach>
             </select>
          </div>
            
           <div class="mt-4 mb-3">
              <button type="submit" name="btAction" value="Update" class="btn btn-block btn-primary">
              <i class="fa fa-save"></i> Update
            </button>
          </div>
          </form>
    </div>
<%@include file="./nhanvien/footer.jsp" %>