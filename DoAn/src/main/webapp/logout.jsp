<%-- 
    Document   : logout
    Created on : Sep 26, 2023, 9:43:32 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Update Profile</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="assets/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="assets/css/style2.css">
</head>
<body>
    
    <div class="main">
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="assets/images/signup-img.jpg" alt="">
                </div>
                <div class="signup-form">
                    <form method="POST" class="register-form" action="LogoutServlet?btAction=Logout" id="register-form">
                        <h2>Profile Form</h2>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Tên Đăng Nhập :</label>                          
                                <input type="text" name="tendn" id="tendn" value="${tendn}" disabled=""/>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Họ Tên :</label>
                                <input type="text" name="hoten" id="hoten" required/>${us.hoTenUser}
                            </div>
                            <div class="form-group">
                                <label for="sdt">Số Điện Thoại :</label>
                                <input type="text" name="sdt" id="sdt" required/>${us.sDTUser}
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="diachi">Địa Chỉ :</label>
                            <input type="text" name="diachi" id="diachi" required/>${us.diaChiUser}
                        </div>
                        <div class="form-radio">
                            <label for="gioitinh" class="radio-label">Giới Tính :</label>
                            <div class="form-radio-item">
                                <input type="radio" name="gioitinh" id="nam" checked>
                                <label for="nam">Nam</label>
                                <span class="check"></span>
                            </div>
                            <div class="form-radio-item">
                                <input type="radio" name="gioitinh" id="nu">
                                <label for="nu">Nữ</label>
                                <span class="check"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="ngaysinh">Ngày Sinh :</label>
                            <input type="text" name="ngaysinh" id="ngaysinh">${us.ngaySinhUser}
                        </div>
                        <div class="form-group">
                            <label for="email">Email ID :</label>
                            <input type="email" name="email" id="email" />${us.emailUser}
                        </div>
                        <div class="form-submit">
                            <input type="submit" value="Reset All" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Submit Form" class="submit" name="submit" id="submit" />
                        </div>
                        <div class="form-group">
                            <button type="submit" name="btAction" value="Logout" class="form-control btn btn-primary submit px-3">Sign Out</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/main2.js"></script>
</body>
</html>

<%
    if(session.getAttribute("tendn")!=null)
    {
        session.removeAttribute("tendn");
        response.sendRedirect("homekh.jsp");
    }
%>
