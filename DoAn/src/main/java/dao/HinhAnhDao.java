/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.CTTrangSuc;
import dto.HinhAnh;
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
public class HinhAnhDao {
    public EntityManagerFactory emf= Persistence.createEntityManagerFactory("DoAnJPATrangSuc");
    
    //phuong thuc lay tat ca danh ba
    public List<HinhAnh> getAll(int maTS){
        EntityManager em= emf.createEntityManager();
        // Truy vấn theo cái tên namequery trong class sinh ra
        Query q= em.createNamedQuery("HinhAnh.findByMaTS");
        q.setParameter("maTS",maTS);
       return q.getResultList();
    }  
    
    //phuong thuc lay tat ca danh ba
    public HinhAnh getTop1(int mats){
        EntityManager em= emf.createEntityManager();
        // Truy vấn theo cái tên namequery trong class sinh ra
        Query q= em.createNativeQuery("select TOP 1 * from HinhAnh where MaTS=?",HinhAnh.class);
        q.setParameter(1,mats);
        return (HinhAnh)q.getSingleResult();
    }  
    
    public static void main(String[] args) {
        HinhAnhDao dao= new HinhAnhDao();
//        String ha =dao.getTop1(1).getTenHinh();
//        System.out.println(ha);
        System.out.println("Đọc danh sách tất cả kích cỡ của trang sức ");
        for(int i=0;i<dao.getAll(1).size();i++){
            HinhAnh ha= dao.getAll(1).get(i);
             System.out.println(ha.getTenHinh());
        }
//        for(HinhAnh ha:dao.getAll(1)){
//            System.out.println(ha.getTenHinh());
//        }
//        System.out.println("So hinh co trong san pham: " +dao.getAll(1).size());
    
}
}
