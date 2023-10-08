<%-- 
    Document   : nav
    Created on : Sep 25, 2023, 7:48:20 AM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar bg-dark border-bottom border-body mb-4" data-bs-theme="dark">
<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <a class="navbar-brand" href="homenv.jsp">LUXURY DIAMOND</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="homenv.jsp">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Quản Lý
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="QuanLyServlet?trang=TS">Quản Lý Trang Sức</a></li>
            <li><a class="dropdown-item" href="QuanLyServlet?trang=US">Quản Lý Users</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
</nav>
