/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.LoaiTSDao;
import dao.TrangSucDao;
import dao.userDao;
import dto.LoaiTS;
import dto.TrangSuc;
import dto.Users;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "QuanLyServlet", urlPatterns = {"/QuanLyServlet"})
public class QuanLyServlet extends HttpServlet {

    TrangSucDao daots = new TrangSucDao();
    userDao daous = new userDao();
    LoaiTSDao daolts = new LoaiTSDao();

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
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String trang = request.getParameter("trang");
        List<TrangSuc> lstTrangSuc = daots.getAll();
        List<Users> lstUs = daous.getAll();
        if (trang == null) {
            request.getRequestDispatcher("homenv.jsp").forward(request, response);
        } else if (trang.equals("TS")) {
                request.setAttribute("lstTS", lstTrangSuc);
                request.getRequestDispatcher("QLTrangSuc.jsp").forward(request, response);
        } else if (trang.equals("US")) {
             request.setAttribute("lstUS", lstUs);
            request.getRequestDispatcher("QLUsers.jsp").forward(request, response);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
