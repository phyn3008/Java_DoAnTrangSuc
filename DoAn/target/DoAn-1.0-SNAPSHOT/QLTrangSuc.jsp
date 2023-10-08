<%-- 
    Document   : QLTrangSuc
    Created on : Oct 2, 2023, 7:38:30 PM
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
            <form action="QLTSServlet?btAction=Search" method="post">  
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
            <a href="QLTSServlet?btAction=Add" class="btn btn-success float-right">
                <i class="fa fa-plus-square"></i> Thêm Trang Sức
            </a>
        </div>
    </div>
    <div class="table-responsive mt-3">
        <h5>DANH SÁCH TRANG SỨC</h5>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Tên Trang Sức</th>
                    <th>Đơn Giá Trang Sức</th>
                    <th>Bộ Sưu Tập</th>
                    <th>Giới Tính</th>
                    <th>Ngày Ra Mắt</th>
                    <th>Loại Trang Sức</th>
                    <th>Chỉnh Sửa</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="x" items="${lstTS}">
                    <tr>
                        <th scope="row">${x.maTS}</th>
                        <td>${x.tenTS}</td>
                        <td>
                            <f:formatNumber var="dongiaSP" value="${x.donGiaSP}" pattern="#,##0"></f:formatNumber>
                            ${dongiaSP}
                        </td>
                        <td>${x.boSuuTap}</td>
                        <td>${x.gioiTinh?"Nam":"Nữ"}</td>
                        <td>  
                            <f:formatDate value="${x.ngayRaMat}" pattern="dd/MM/yyyy" />
                        </td>
                        <td>${x.maLoaiTS.tenLoaiTS}</td>
                        <td>
                            <a href="QLTSServlet?maTS=${x.maTS}&btAction=Edit" class="text-primary"><i class="bi bi-pencil-fill"></i></a>
                            <a href="QLTSServlet?maTS=${x.maTS}&btAction=Delete" onclick="return confirm('Bạn chắc muốn xóa???')" class="text-danger" ><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</div><!-- /.container -->
<%@include file="./nhanvien/footer.jsp" %>

