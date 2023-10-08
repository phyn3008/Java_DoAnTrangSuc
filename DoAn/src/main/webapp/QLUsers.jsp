<%-- 
    Document   : QLUsers
    Created on : Oct 2, 2023, 7:39:10 PM
    Author     : Admin
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="./nhanvien/Header.jsp" %>
<%@include file="./nhanvien/nav.jsp" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container mt-4" id="main-content">
    <div class="row">
        <div class="col-md-6">
            <form action="QLUSServlet?btAction=Search" method="post">  
                <div class="row">
                    <div class="col-md-8"> 
                        <input class="form-control" type="search" name="txtsearch" placeholder="Search by name ..." />
                    </div>
                    <div class="col-md-4">
                        <button class="btn btn-primary" type="submit" name="btAction" value="Search">
                            <i class="fa fa-search"></i> Tìm Kiếm
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-6 text-end">
            <a href="QLUSServlet?btAction=Add" class="btn btn-success float-right">
                <i class="fa fa-plus-square"></i> Thêm Nhân Viên
            </a>
        </div>
    </div>
    <div class="table-responsive mt-3">
        <h5>DANH SÁCH NHÂN VIÊN</h5>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Họ Và Tên</th>
                    <th>Ngày Sinh</th>
                    <th>Email</th>
                    <th>Giới Tính</th>
                    <th>SĐT</th>
                    <th>Loại User</th>
                    <th>Chỉnh Sửa</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="x" items="${lstUS}">
                    <tr>
                        <th scope="row">${x.maUser}</th>
                        <td>${x.hoTenUser}</td>
                        <td>  
                            <f:formatDate value="${x.ngaySinhUser}" pattern="dd/MM/yyyy" />
                        </td>
                        <td>${x.emailUser}</td>
                        <td>${x.gioiTinhUser?"Nam":"Nữ"}</td>
                        <td>${x.getSDTUser()}</td>
                        <td>${x.maLoaiUser.tenLoaiUser}</td>
                        <td>
                            <a href="QLUSServlet?maUS=${x.maUser}&btAction=Edit" class="text-primary"><i class="bi bi-pencil-fill"></i></a>
                            <a href="QLUSServlet?maUS=${x.maUser}&btAction=Delete" onclick="return confirm('Bạn chắc muốn xóa???')" class="text-danger" ><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<%@include file="./nhanvien/footer.jsp" %>