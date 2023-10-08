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
          <h5 class="text-center">Edit Users</h5>
          <input type="hidden" name="maUS" value="${us.maUS}"/>
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
                <input class="form-control"  name="ngaySinhUser" type="datetime" value="${us.ngaySinhUser}" placeholder="dd/MM/yyyy"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Địa Chỉ</label>
                <input class="form-control" type="text" name="diaChiUser" value="value="${us.diaChiUser==NULL?NULL:us.diaChiUser}" />
            </div>
            <div class="mb-3">
                <label class="form-label">Số Điện Thoại</label>
                <input class="form-control" type="text" name="sDTUser" value="${us.sDTUser}" required="Vui lòng nhập số điện thoại"/>
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
                <input class="form-control" type="text" name="passWord" value="${us.passWord}"  required="Vui lòng nhập password"/>
            </div>
            <div class="mb-3">
                <label class="form-label">Hệ số lương</label>
                <input class="form-control" type="text" name="heSoLuong" value="${us.heSoLuong}"  value="0" />
            </div>
            <div class="mb-3">
                <label class="form-label">Chức Vụ</label>
                <input class="form-control" type="text" name="chucVu"  value="${us.chucVu==NULL?NULL:us.chucVu}" value="NULL"/>
            </div>
             <div class="mb-3">
                <label class="form-label">Số Tài Khoản</label>
                <input class="form-control" type="text" name="sTKUser" value="${us.sTKUser==NULL?NULL:us.sTKUser}" value="NULL" />
            </div>
            <div class="mb-3">
                <label class="form-label">Ghi Chú</label>
                <input class="form-control" type="text" name="ghiChuNV" value="${us.ghiChuNV==NULL?NULL:us.ghiChuNV}" value="Không" />
            </div>
            <div class="mb-3">
                <label class="form-label">Admin</label>
                <input class="form-check-input" type="checkbox" name="isAdmin" value="true" checked="true" />
            </div>
            <div class="mb-3">
             <label class="form-label">Loại Users</label>
             <input class="form-control" type="text" name="maLoaiUser" value="Nhân Viên" disabled="true" />
          </div>
            
           <div class="mt-4 mb-3">
              <button type="submit" name="btAction" value="Update" class="btn btn-block btn-primary">
              <i class="fa fa-save"></i> Update
            </button>
          </div>
          </form>
    </div>
<%@include file="./nhanvien/footer.jsp" %>