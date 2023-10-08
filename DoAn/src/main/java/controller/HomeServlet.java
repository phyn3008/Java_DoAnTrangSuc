/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.HinhAnhDao;
import dao.LoaiTSDao;
import dao.TrangSucDao;
import dto.LoaiTS;
import dto.LoaiTS_;
import dto.TrangSuc;
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
@WebServlet(name = "HomeServlet", urlPatterns = {"/HomeServlet"})
public class HomeServlet extends HttpServlet {
//    private final static String [] loaiTS1=new String[]{"3.jpg","1.png"};
//    private final static String [] loaiTS1=new String[]{"3.jpg"};
    LoaiTSDao daoloaits = new LoaiTSDao();
    TrangSucDao daotrangsuc = new TrangSucDao();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String maloaits = request.getParameter("maloaiTS");
        List<LoaiTS> kq = daoloaits.getAll();
        request.setAttribute("lstLoaiTS", kq);

        if (maloaits == null) {
       // 4 sản phẩm theo ngay ra mat
        List<TrangSuc> lsttop4tn= daotrangsuc.top4spngaygannhat();
        request.setAttribute("lsttop4tn", lsttop4tn);
        request.getRequestDispatcher("homekh.jsp").forward(request, response);
            
        } else if (maloaits.equals("1")) {
            List<TrangSuc> lsttrangsuc= daotrangsuc.getAllofMaLoaiTS(Integer.parseInt(maloaits));
            request.setAttribute("lsttrangsuc", lsttrangsuc);
            request.setAttribute("maloaits", maloaits);
            request.getRequestDispatcher("nhan.jsp").forward(request, response);
        } else if (maloaits.equals("2")) {
            List<TrangSuc> lsttrangsuc= daotrangsuc.getAllofMaLoaiTS(Integer.parseInt(maloaits));
          request.setAttribute("lsttrangsuc", lsttrangsuc);
            request.setAttribute("maloaits", maloaits);
            request.getRequestDispatcher("lactay.jsp").forward(request, response);
        } else if (maloaits.equals("3")) {
            List<TrangSuc> lsttrangsuc= daotrangsuc.getAllofMaLoaiTS(Integer.parseInt(maloaits));
            request.setAttribute("lsttrangsuc", lsttrangsuc);
            request.setAttribute("maloaits", maloaits);
            request.getRequestDispatcher("vongco.jsp").forward(request, response);
        } else if (maloaits.equals("4")) {
            List<TrangSuc> lsttrangsuc= daotrangsuc.getAllofMaLoaiTS(Integer.parseInt(maloaits));
            request.setAttribute("lsttrangsuc", lsttrangsuc);
            request.setAttribute("maloaits", maloaits);
            request.getRequestDispatcher("bongtai.jsp").forward(request, response);
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
