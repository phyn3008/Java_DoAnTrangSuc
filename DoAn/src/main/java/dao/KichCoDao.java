/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.CTTrangSuc;
import dto.KichCo;
import dto.TrangSuc;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Admin
 */
public class KichCoDao {
    public EntityManagerFactory emf= Persistence.createEntityManagerFactory("DoAnJPATrangSuc");
     public List<CTTrangSuc> getAllConSL(int maTS){
        EntityManager em= emf.createEntityManager();
        // Truy vấn theo cái query tự viết
        Query q= em.createQuery("select n from CTTrangSuc n where n.cTTrangSucPK.maTS = :maTS and n.soLuong>0");
        q.setParameter("maTS", maTS);
       return q.getResultList();
    }  
     
      public static void main(String[] args) {
        KichCoDao dao= new  KichCoDao();
        System.out.println("Đọc danh sách tất cả kích cỡ của trang sức ");
        for(CTTrangSuc ts:dao.getAllConSL(1)){
            System.out.println(ts.getKichCo().getTenKC()+"-"+ts.getSoLuong());
        }
}
}
