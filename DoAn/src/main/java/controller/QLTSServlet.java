/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ChatLieuDao;
import dao.LoaiTSDao;
import dao.TrangSucDao;
import dto.ChatLieu;
import dto.LoaiTS;
import dto.TrangSuc;
import java.io.IOException;
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
@WebServlet(name = "QLTSServlet", urlPatterns = {"/QLTSServlet"})
public class QLTSServlet extends HttpServlet {
    TrangSucDao daots = new TrangSucDao();
    LoaiTSDao daolts = new LoaiTSDao();
    ChatLieuDao daocl = new ChatLieuDao();
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
//        List<TrangSuc> lstTrangSuc = daots.getAll();
//        int page=1;
//        if(request.getParameter("page")!=null){
//            page=Integer.parseInt(request.getParameter("page"));
//        }
//        if(action==null){
////        Lấy dữ liệu từ model
////        List<TrangSuc> kq= daots.getofPage(page);
//        request.setAttribute("lstTrangSuc", lstTrangSuc);
////        request.setAttribute("pages", daots.countOfPage());
//        request.getRequestDispatcher("QLTrangSuc.jsp").forward(request, response);
        if(action.equals("Delete"))
        {
            int maTS=Integer.parseInt(request.getParameter("maTS"));
            daots.Delete(maTS);
            List<TrangSuc> kq= daots.getAll();
            // Gửi dữ liệu cho view (jsp)
            request.setAttribute("lstTS", kq);
            request.getRequestDispatcher("QLTrangSuc.jsp").forward(request, response);
        }else if(action.equals("Add"))
        {
            List<LoaiTS> kq= daolts.getAll() ;
            List<ChatLieu> kqcl= daocl.getAll();
            request.setAttribute("lstLTS", kq);
            request.setAttribute("lstCL", kqcl);
            request.getRequestDispatcher("add.jsp").forward(request, response);   
       
        }else if(action.equals("Edit"))
        {
            int maTS=Integer.parseInt(request.getParameter("maTS"));
            request.setAttribute("ts", daots.find(maTS) );
            request.setAttribute("lstCL", daocl.getAll());
            request.setAttribute("lstLoaiTS", daolts.getAll());
            request.getRequestDispatcher("edit.jsp").forward(request, response);
        }else if(action.equals("Save"))
        {
            String tents=request.getParameter("tenTS");
            int dongiaSP=Integer.parseInt(request.getParameter("donGiaSP"));
            double trongluong=Double.parseDouble(request.getParameter("trongLuong"));
            double hamluongchatlieu=Double.parseDouble(request.getParameter("hamLuongChatLieu"));
            String loaidachinh=request.getParameter("loaiDaChinh");
            String loaidaphu=request.getParameter("loaiDaPhu");
            String mauda=request.getParameter("mauDa");
            int svdc=Integer.parseInt(request.getParameter("soVienDaChinh"));
            
            int svdp=Integer.parseInt(request.getParameter("soVienDaPhu"));
            String boSuuTap=request.getParameter("boSuuTap");
            String thuongHieu=request.getParameter("thuongHieu");
            boolean gioitinh=Boolean.parseBoolean("gioiTinh");
            String thongTinTS=request.getParameter("thongTinTS");
            String ghiChuTS=request.getParameter("ghiChuTS");
            String ngayramat=request.getParameter("ngayRaMat");
            Date date = new SimpleDateFormat("dd/MM/yyyy").parse(ngayramat);
            int maloaiTS= Integer.parseInt(request.getParameter("maLoaiTS"));
            LoaiTS loai= new LoaiTS(maloaiTS);
            int maCL= Integer.parseInt(request.getParameter("maCL"));
            ChatLieu cl= new ChatLieu(maCL);
            TrangSuc ts= new TrangSuc(0, tents, dongiaSP, trongluong, hamluongchatlieu, loaidachinh, loaidaphu, mauda, svdc, svdp, boSuuTap, thuongHieu, gioitinh, thongTinTS, ghiChuTS, date, cl, loai);
            daots.Insert(ts);
            List<TrangSuc> kq= daots.getAll();
            // Gửi dữ liệu cho view (jsp)
             request.setAttribute("lstTS", kq);
            request.getRequestDispatcher("QLTrangSuc.jsp").forward(request, response); 
            
            
            
        }else if(action.equals("Update"))
        {
            int mats=Integer.parseInt(request.getParameter("maTS"));
            String tents=request.getParameter("tenTS");
            int dongiaSP=Integer.parseInt(request.getParameter("donGiaSP"));
            double trongluong=Double.parseDouble(request.getParameter("trongLuong"));
            double hamluongchatlieu=Double.parseDouble(request.getParameter("hamLuongChatLieu"));
            String loaidachinh=request.getParameter("loaiDaChinh");
            String loaidaphu=request.getParameter("loaiDaPhu");
            String mauda=request.getParameter("mauDa");
            int svdc=Integer.parseInt(request.getParameter("soVienDaChinh"));
            
            int svdp=Integer.parseInt(request.getParameter("soVienDaPhu"));
            String boSuuTap=request.getParameter("boSuuTap");
            String thuongHieu=request.getParameter("thuongHieu");
            boolean gioitinh=Boolean.parseBoolean("gioiTinh");
            String thongTinTS=request.getParameter("thongTinTS");
            String ghiChuTS=request.getParameter("ghiChuTS");
            String ngayramat=request.getParameter("ngayRaMat");
            Date date = new SimpleDateFormat("dd/MM/yyyy").parse(ngayramat);
            int maloaiTS= Integer.parseInt(request.getParameter("maLoaiTS"));
            LoaiTS loai= new LoaiTS(maloaiTS);
            int maCL= Integer.parseInt(request.getParameter("maCL"));
            ChatLieu cl= new ChatLieu(maCL);
            TrangSuc ts= new TrangSuc(mats, tents, dongiaSP, trongluong, hamluongchatlieu, loaidachinh, loaidaphu, mauda, svdc, svdp, boSuuTap, thuongHieu, gioitinh, thongTinTS, ghiChuTS, date, cl, loai);
            daots.Update(ts);
            List<TrangSuc> kq= daots.getAll();
            // Gửi dữ liệu cho view (jsp)
             request.setAttribute("lstTS", kq);
            request.getRequestDispatcher("QLTrangSuc.jsp").forward(request, response); 
        }else if(action.equals("Search"))
        {
            String timkiem=request.getParameter("txtsearch");
            if(timkiem==""){
                List<TrangSuc> kq= daots.getAll();
                request.setAttribute("lstTS", kq);
                request.getRequestDispatcher("QLTrangSuc.jsp").forward(request, response);
            }else{
                List<TrangSuc> kq= daots.search(timkiem);
                request.setAttribute("lstTS", kq);
                request.getRequestDispatcher("QLTrangSuc.jsp").forward(request, response); 
                }      
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(QLTSServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(QLTSServlet.class.getName()).log(Level.SEVERE, null, ex);
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
