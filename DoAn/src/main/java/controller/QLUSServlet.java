/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.LoaiUSDao;
import dao.userDao;
import dto.LoaiUser;
import dto.Users;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "QLUSServlet", urlPatterns = {"/QLUSServlet"})
public class QLUSServlet extends HttpServlet {

    userDao daous = new userDao();
    LoaiUSDao daolus = new LoaiUSDao();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
       request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("btAction");
//        List<Users> lstUsers = daots.getAll();
//        int page=1;
//        if(request.getParameter("page")!=null){
//            page=Integer.parseInt(request.getParameter("page"));
//        }
//        if(action==null){
////        Lấy dữ liệu từ model
////        List<Users> kq= daots.getofPage(page);
//        request.setAttribute("lstUsers", lstUsers);
////        request.setAttribute("pages", daots.countOfPage());
//        request.getRequestDispatcher("QLUsers.jsp").forward(request, response);
        if(action.equals("Delete"))
        {
            int maus=Integer.parseInt(request.getParameter("maUS"));
            daous.Delete(maus);
            List<Users> kq= daous.getAll();
            // Gửi dữ liệu cho view (jsp)
            request.setAttribute("lstUS", kq);
            request.getRequestDispatcher("QLUsers.jsp").forward(request, response);
        }else if(action.equals("Add"))
        {
            List<LoaiUser> kq= daolus.getAll() ;
            request.setAttribute("lstLUS", kq);
            request.getRequestDispatcher("addUS.jsp").forward(request, response);   
       
        }else if(action.equals("Edit"))
        {
            int maUS=Integer.parseInt(request.getParameter("maUS"));
            request.setAttribute("us", daous.findById(maUS) );
            request.setAttribute("lstLoaiUS", daolus.getAll());
            request.getRequestDispatcher("editUS.jsp").forward(request, response);
        }else if(action.equals("Save"))
        {
            String hoten=request.getParameter("hoTenUser");
            String ngaysinh=request.getParameter("ngaySinhUser");
            Date ns = new SimpleDateFormat("dd/MM/yyyy").parse(ngaysinh);
            boolean gioitinh=Boolean.parseBoolean("gioiTinhUser");
            String diachi=request.getParameter("diaChiUser");
            long sdt=Long.parseLong(request.getParameter("sDTUser"));
            String email=request.getParameter("emailUser");
            String tenDangNhap=request.getParameter("tenDangNhap");
            String passWord=request.getParameter("passWord");
            String ngayBD=request.getParameter("ngayBD");
            Date ngaybd = new SimpleDateFormat("dd/MM/yyyy").parse(ngayBD);
             int heSoLuong=Integer.parseInt(request.getParameter("heSoLuong"));
              String chucVu=request.getParameter("chucVu");
              long sTKUser=Long.parseLong(request.getParameter("sTKUser"));
              String ghiChuNV=request.getParameter("ghiChuNV");
              boolean isadmin=Boolean.parseBoolean("isAdmin");
               int maLoaiUser= Integer.parseInt(request.getParameter("maLoaiUser"));
            LoaiUser loai= new LoaiUser(maLoaiUser);
           
            Users us= new Users(maLoaiUser, hoten, ns, gioitinh, diachi, sdt, email, tenDangNhap, passWord, ngaybd, heSoLuong, chucVu, sTKUser, ghiChuNV, isadmin, loai);
            daous.Insert(us);
            List<Users> kq= daous.getAll();
            // Gửi dữ liệu cho view (jsp)
             request.setAttribute("lstUS", kq);
            request.getRequestDispatcher("QLUsers.jsp").forward(request, response); 
            
            
            
        }else if(action.equals("Update"))
        {
            String hoten=request.getParameter("hoTenUser");
            String ngaysinh=request.getParameter("ngaySinhUser");
            Date ns = new SimpleDateFormat("dd/MM/yyyy").parse(ngaysinh);
            boolean gioitinh=Boolean.parseBoolean("gioiTinhUser");
            String diachi=request.getParameter("diaChiUser");
            long sdt=Long.parseLong(request.getParameter("sDTUser"));
            String email=request.getParameter("emailUser");
            String tenDangNhap=request.getParameter("tenDangNhap");
            String passWord=request.getParameter("passWord");
            String ngayBD=request.getParameter("ngayBD");
            Date ngaybd = new SimpleDateFormat("dd/MM/yyyy").parse(ngayBD);
             int heSoLuong=Integer.parseInt(request.getParameter("heSoLuong"));
              String chucVu=request.getParameter("chucVu");
              long sTKUser=Long.parseLong(request.getParameter("sTKUser"));
              String ghiChuNV=request.getParameter("ghiChuNV");
              boolean isadmin=Boolean.parseBoolean("isAdmin");
               int maLoaiUser= Integer.parseInt(request.getParameter("maLoaiUser"));
            LoaiUser loai= new LoaiUser(maLoaiUser);
           
            Users us= new Users(maLoaiUser, hoten, ns, gioitinh, diachi, sdt, email, tenDangNhap, passWord, ngaybd, heSoLuong, chucVu, sTKUser, ghiChuNV, isadmin, loai);
            daous.Update(us);
            List<Users> kq= daous.getAll();
            // Gửi dữ liệu cho view (jsp)
             request.setAttribute("lstUS", kq);
            request.getRequestDispatcher("QLUsers.jsp").forward(request, response); 
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(QLUSServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(QLUSServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
