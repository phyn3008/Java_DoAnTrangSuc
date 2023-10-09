<%-- 
    Document   : addContact
    Created on : Sep 15, 2023, 1:19:36 PM
    Author     : Admin
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="./nhanvien/Header.jsp" %>
<%@include file="./nhanvien/nav.jsp" %>

<% request.setCharacterEncoding("UTF-8"); %>

<div class="container mt-4" id="main-content">
      <div class="row justify-content-center">
          <form action="QLUSServlet?btAction=Update" style="min-width: 300px;" method="post" >
          <h5 class="text-center">Edit Users</h5>
          <input type="hidden" name="maUser" value="${us.maUser}"/>
            <div class="mb-3">
                <label class="form-label">Họ Tên</label>
                <input class="form-control" type="text" name="hoTenUser" value="${us.hoTenUser}"/>
            </div>
            <div class="mb-3">
              <label class="form-label">Giới Tính</label>
              <div style="width: 200px">
                 <input class="form-check-input" type="radio" name="gioiTinhUser" ${us.gioiTinhUser==true?"checked":""} />Nam
                  <input class="form-check-input" type="radio" name="gioiTinhUser" ${us.gioiTinhUser==false?"checked":""}/>Nữ
              </div>
          </div>
            <div class="mb-3">
                <label class="form-label">Ngày Sinh</label>
                <f:formatDate var="ngay" value="${us.ngaySinhUser}" pattern="dd/MM/yyyy" />
                <input class="form-control"  name="ngaySinhUser" type="datetime" value="${ngay}" placeholder="dd/MM/yyyy"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Địa Chỉ</label>
                <input class="form-control" type="text" name="diaChiUser" value="${us.diaChiUser==NULL?NULL:us.diaChiUser}" />
            </div>
            <div class="mb-3">
                <label class="form-label">Số Điện Thoại</label>
                <input class="form-control" type="text" name="sDTUser" value="${us.getSDTUser()}" required="Vui lòng nhập số điện thoại"/>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input class="form-control" type="text" name="emailUser"  value="${us.emailUser}" required="Vui lòng nhập email" />
            </div>
            <div class="mb-3">
                <label class="form-label">Tên Đăng Nhập</label>
                <input class="form-control" type="text" name="tenDangNhap" value="${us.tenDangNhap}" required="Vui lòng nhập Tên đăng nhập" />
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input class="form-control" type="password" name="passWord" value="${us.getPassWord()}"  required="Vui lòng nhập password"/>
            </div>
             <div class="mb-3">
                <label class="form-label">Ngày Bắt Đầu</label>
                <input class="form-control"  name="ngayBD" type="datetime" value="${us.ngayBD}" placeholder="dd/MM/yyyy"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Hệ số lương</label>
                <input class="form-control" type="text" name="heSoLuong" value="${us.getHeSoLuong()==NULL?0:us.getHeSoLuong()}" />
            </div>
            <div class="mb-3">
                <label class="form-label">Chức Vụ</label>
                <input class="form-control" type="text" name="chucVu"  value="${us.chucVu==NULL?NULL:us.chucVu}"/>
            </div>
             <div class="mb-3">
                <label class="form-label">Số Tài Khoản</label>
                <input class="form-control" type="text" name="sTKUser" value="${us.getSTKUser()==NULL?NULL:us.getSTKUser()}"  />
            </div>
            <div class="mb-3">
                <label class="form-label">Ghi Chú</label>
                <input class="form-control" type="text" name="ghiChuNV" value="${us.ghiChuNV}" />
            </div>
            <div class="mb-3">
                <label class="form-label">Admin</label>
                <input class="form-check-input" type="checkbox" name="isAdmin" value="true" ${us.isAdmin?"checked":""} />
            </div>
            <div class="mb-3">
             <label class="form-label">Loại Users</label>
             <input class="form-control" type="text" name="maLoaiUser" value="${us.maLoaiUser.tenLoaiUser}" disabled="true" />
          </div>
            
           <div class="mt-4 mb-3">
              <button type="submit" name="btAction" value="Update" class="btn btn-block btn-primary">
              <i class="fa fa-save"></i> Update
            </button>
          </div>
          </form>
    </div>
<%@include file="./nhanvien/footer.jsp" %>