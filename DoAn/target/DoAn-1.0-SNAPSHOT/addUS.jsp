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
        <form action="QLUSServlet?btAction=Save" method="post" style="min-width: 300px;">
            <h5 class="text-center">Thêm Nhân Viên</h5>

            <div class="mb-3">
                <label class="form-label">Họ Tên</label>
                <input class="form-control" type="text" name="hoTenUser"/>
            </div>
            <div class="mb-3">
              <label class="form-label">Giới Tính</label>
              <div style="width: 200px">
                  <input class="form-check-input" type="radio" name="gioiTinhUser" checked="true" value="true" />Nam 
                  <input class="form-check-input" type="radio" name="gioiTinhUser"   value="false"/>Nữ
              </div>
          </div>
            <div class="mb-3">
                <label class="form-label">Ngày Sinh</label>
                <input class="form-control"  name="ngaySinhUser" type="datetime" placeholder="dd/MM/yyyy"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Địa Chỉ</label>
                <input class="form-control" type="text" name="diaChiUser" value="NULL" />
            </div>
            <div class="mb-3">
                <label class="form-label">Số Điện Thoại</label>
                <input class="form-control" type="text" name="sDTUser" required="Vui lòng nhập số điện thoại"/>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input class="form-control" type="text" name="emailUser" required="Vui lòng nhập email" />
            </div>
            <div class="mb-3">
                <label class="form-label">Tên Đăng Nhập</label>
                <input class="form-control" type="text" name="tenDangNhap" required="Vui lòng nhập Tên đăng nhập" />
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input class="form-control" type="text" name="passWord"  required="Vui lòng nhập password"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Hệ số lương</label>
                <input class="form-control" type="text" name="heSoLuong"  value="0" />
            </div>
            <div class="mb-3">
                <label class="form-label">Chức Vụ</label>
                <input class="form-control" type="text" name="chucVu"  value="NULL"/>
            </div>
             <div class="mb-3">
                <label class="form-label">Số Tài Khoản</label>
                <input class="form-control" type="text" name="sTKUser" value="NULL" />
            </div>
            <div class="mb-3">
                <label class="form-label">Ghi Chú</label>
                <input class="form-control" type="text" name="ghiChuNV" value="Không" />
            </div>
            <div class="mb-3">
                <label class="form-label">Admin</label>
                <input class="form-check-input" type="checkbox" name="isAdmin" checked="true" />
            </div>
            <div class="mb-3">
             <label class="form-label">Loại Users</label>
             <input class="form-control" type="text" name="maLoaiUser" value="Nhân Viên" disabled="true" />
          </div>
            <div class="mb-3">
              <button type="submit" name="btAction" value="Save" class="btn btn-block btn-primary">
              <i class="fa fa-save"></i> Save
            </button>
          </div>
        </form>
    </div>
</div>
<%@include file="./nhanvien/footer.jsp" %>