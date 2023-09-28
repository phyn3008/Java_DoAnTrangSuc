/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.LoginDao;
import dto.Users;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class LoginServlet extends HttpServlet {
    LoginDao dao= new LoginDao();
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
        
        String action= request.getParameter("btAction");
//        if(action==null){
//            request.getRequestDispatcher("homekh.jsp").forward(request, response);   
//        }
        if(action.equals("Login")){
            String tendangnhap= request.getParameter("tendangnhap");
            String password= request.getParameter("password");
            Users u= dao.checkLogin(tendangnhap, password);
            if(u!=null){
                if(u.getChucVu()==null){
                // Gửi dữ liệu cho view (jsp)
                    String tb= "Đăng Nhập Thành Công";
//                    HttpSession session = request.getSession();
//                    session.setAttribute("tendn",tendangnhap);
//                    Cookie cookie= new Cookie("tendn",tendangnhap);
//                    response.addCookie(cookie);
                    
                    request.setAttribute("thanhcong", tb);
                    request.getRequestDispatcher("homekh.jsp").forward(request, response);   
                    request.setAttribute("tendn",tendangnhap);
                    request.getRequestDispatcher("logout.jsp").forward(request, response);  
                }else{
                    String tb= "Đăng Nhập Thành Công";
                    request.setAttribute("thanhcong", tb);
                    request.getRequestDispatcher("homenv.jsp").forward(request, response);
                    
                }   
            }else{
                String tb= "Tài khoản hoặc mật khẩu của bạn sai. Vui lòng nhập lại";
                request.setAttribute("thatbai", tb);
                request.getRequestDispatcher("login.jsp").forward(request, response);   
            }       
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
