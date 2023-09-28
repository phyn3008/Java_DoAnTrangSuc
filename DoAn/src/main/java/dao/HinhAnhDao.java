/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

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
    public List<TrangSuc> getAll(){
        EntityManager em= emf.createEntityManager();
        // Truy vấn theo cái tên namequery trong class sinh ra
        Query q= em.createNamedQuery("TrangSuc.findAll");
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
        String ha =dao.getTop1(1).getTenHinh();
        System.out.println(ha);
    
}
}
