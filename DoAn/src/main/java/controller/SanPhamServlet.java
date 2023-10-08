/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.LoaiTSDao;
import dao.TrangSucDao;
import dto.LoaiTS;
import dto.TrangSuc;
import java.io.IOException;
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
@WebServlet(name = "SanPhamServlet", urlPatterns = {"/SanPhamServlet"})
public class SanPhamServlet extends HttpServlet {

    TrangSucDao daots= new TrangSucDao();
    LoaiTSDao daoloaits = new LoaiTSDao();
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
       String maloaits = request.getParameter("maloaiTS");
        List<LoaiTS> kq = daoloaits.getAll();
        request.setAttribute("lstLoaiTS", kq);
       String mats = request.getParameter("mats");
       TrangSuc trangsuc= daots.find(Integer.parseInt(mats));
       if (trangsuc.getMaLoaiTS().getMaLoaiTS().toString().equals("1")) {
            String duongdan= "assets/images/Nhan/";
            request.setAttribute("ddha", duongdan);
            request.setAttribute("chitietts", trangsuc);
            request.getRequestDispatcher("ChiTietSanPham.jsp").forward(request, response);
        } else if (trangsuc.getMaLoaiTS().getMaLoaiTS().toString().equals("2")) {
           String duongdan= "assets/images/LacTay/";
            request.setAttribute("ddha", duongdan);
            request.setAttribute("chitietts", trangsuc);
            request.getRequestDispatcher("ChiTietSanPham.jsp").forward(request, response);
        } else if (trangsuc.getMaLoaiTS().getMaLoaiTS().toString().equals("3")) {
           String duongdan= "assets/images/DayChuyen/";
            request.setAttribute("ddha", duongdan);
            request.setAttribute("chitietts", trangsuc);
            request.getRequestDispatcher("ChiTietSanPham.jsp").forward(request, response);
        } else if (trangsuc.getMaLoaiTS().getMaLoaiTS().toString().equals("4")) {
            String duongdan= "assets/images/HoaTai/";
            request.setAttribute("ddha", duongdan);
            request.setAttribute("chitietts", trangsuc);
            request.getRequestDispatcher("ChiTietSanPham.jsp").forward(request, response);
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
