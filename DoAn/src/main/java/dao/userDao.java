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
public class userDao 
{
    public EntityManagerFactory emf= Persistence.createEntityManagerFactory("DoAnJPATrangSuc");
        public Users find(String tendn){
        EntityManager em= emf.createEntityManager();
        return em.find(Users.class, tendn);
    }  
    public List<Users> getAll(){
        EntityManager em= emf.createEntityManager();
        Query q= em.createNamedQuery("Users.findAll");
       return q.getResultList();
    }  
    //xoa
    public boolean Delete(int maus){
        EntityManager em= emf.createEntityManager();
        em.getTransaction().begin();
        Users us= em.find(Users.class, maus);
        if(us!=null){
            em.remove(us);
        }
        em.getTransaction().commit();
        return true;
 
    }
     public Users findById(int maUS){
        EntityManager em= emf.createEntityManager();
       return em.find(Users.class, maUS);
    }  
       public boolean Insert(Users ts){
        EntityManager em= emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(ts);
        em.getTransaction().commit();
        return true;
    }  
       
       
        public boolean Update(Users uss){
        EntityManager em= emf.createEntityManager();
        em.getTransaction().begin();
        Users ts= em.find(Users.class, uss.getMaUser());
        if(ts!=null){
            ts.setMaLoaiUser(uss.getMaLoaiUser());
            ts.setHoTenUser(uss.getHoTenUser());
            ts.setNgaySinhUser(uss.getNgaySinhUser());
            ts.setDiaChiUser(uss.getDiaChiUser());
            ts.setEmailUser(uss.getEmailUser());
            ts.setSDTUser(uss.getSDTUser());
            ts.setTenDangNhap(uss.getTenDangNhap());
            ts.setChucVu(uss.getChucVu());
            ts.setPassWord(uss.getPassWord());
            ts.setNgayBD(uss.getNgayBD());
            ts.setHeSoLuong(uss.getHeSoLuong());
            ts.setSTKUser(uss.getSTKUser());
            ts.setIsAdmin(uss.getIsAdmin());
            ts.setGhiChuNV(uss.getGhiChuNV());
        }
        em.getTransaction().commit();
        return true;
    }
}
