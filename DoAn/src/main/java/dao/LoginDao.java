/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Users;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Admin
 */
public class LoginDao {
    
    public EntityManagerFactory emf= Persistence.createEntityManagerFactory("DoAnJPATrangSuc");
    public Users checkLogin(String username, String password)
    {
        Users u=null;
        EntityManager em= emf.createEntityManager();
        Query q= em.createQuery("select n from Users n where n.tenDangNhap=:tendangnhap and n.passWord=:password");
        q.setParameter("tendangnhap", username);
        q.setParameter("password", password);
        List<Users> kq= q.getResultList();
        if(kq.size()>0){
            return u=(Users)q.getSingleResult();
        }
        return u;
    }
    
    // phương thức đăng ký thành viên
    public int register(Users u)
    {
        //sinh viên tự thực hiện
       return 1;
    }
    
     // phương thức reset password
    public int resetPassword(Users u)
    {
       //sinh viên tự thực hiện
       return 1;
    }
    
    //test
    public static void main(String[] args) {
        LoginDao dao= new LoginDao();
        Users u= dao.checkLogin("tvtu210", "54321");
        if(u!=null){
            System.out.println("OK - Admin:" + u.getIsAdmin());
        }else{
            System.out.println("NOT OKE");
        }
        }
}
