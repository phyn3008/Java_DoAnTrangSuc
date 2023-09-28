/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

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
public class TrangSucDao {
    public EntityManagerFactory emf= Persistence.createEntityManagerFactory("DoAnJPATrangSuc");
    //phuong thuc lay tat ca danh ba
    public List<TrangSuc> getAll(){
        EntityManager em= emf.createEntityManager();
        // Truy vấn theo cái tên namequery trong class sinh ra
        Query q= em.createNamedQuery("TrangSuc.findAll");
       return q.getResultList();
    }  
    
    //
    public List<TrangSuc> search(String name){
        EntityManager em= emf.createEntityManager();
        // Truy vấn theo cái query tự viết
        Query q= em.createQuery("select n from TrangSuc n where n.tenTS like :tenTS");
        q.setParameter("tenTS","%"  + name + "%");
       return q.getResultList();
    }  
    
    public List<TrangSuc> layngaunhien(int limit){
        EntityManager em= emf.createEntityManager();
        // Truy vấn theo cái query tự viết
        Query q= em.createQuery("select top :limit n from TrangSuc n order by NEWID()");
        q.setParameter("limit",limit);
       return q.getResultList();
    } 
    
    //Lấy tất cả có mã loại
    public List<TrangSuc> getAllofMaLoaiTS(int maloaiTS){
        EntityManager em= emf.createEntityManager();
        // Truy vấn theo cái query tự viết
        Query q= em.createQuery("select n from TrangSuc n where n.maLoaiTS.maLoaiTS = :maloaiTS");
        q.setParameter("maloaiTS",maloaiTS);
       return q.getResultList();
    } 
    
    public TrangSuc find(int mats){
        EntityManager em= emf.createEntityManager();
       return em.find(TrangSuc.class, mats);
    }  
    
    // thêm
    public boolean Insert(TrangSuc ts){
        EntityManager em= emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(ts);
        em.getTransaction().commit();
        return true;
    }  
    
    //xoa
    public boolean Delete(int mats){
        EntityManager em= emf.createEntityManager();
        em.getTransaction().begin();
        TrangSuc ts= em.find(TrangSuc.class, mats);
        if(ts!=null){
            em.remove(ts);
        }
        em.getTransaction().commit();
        return true;
    }
    //update
    public boolean Update(TrangSuc tss){
        EntityManager em= emf.createEntityManager();
        em.getTransaction().begin();
        TrangSuc ts= em.find(TrangSuc.class, tss.getMaTS());
        if(ts!=null){
            ts.setMaLoaiTS(tss.getMaLoaiTS());
            ts.setTenTS(tss.getTenTS());
            ts.setDonGiaSP(tss.getDonGiaSP());
            ts.setTrongLuong(tss.getTrongLuong());
            ts.setHamLuongChatLieu(tss.getHamLuongChatLieu());
            ts.setLoaiDaChinh(tss.getLoaiDaChinh());
            ts.setLoaiDaPhu(tss.getLoaiDaPhu());
            ts.setMauDa(tss.getMauDa());
            ts.setSoVienDaChinh(tss.getSoVienDaChinh());
            ts.setSoVienDaPhu(tss.getSoVienDaPhu());
            ts.setBoSuuTap(tss.getBoSuuTap());
            ts.setThuongHieu(tss.getThuongHieu());
            
            ts.setGioiTinh(tss.getGioiTinh());
            ts.setMaCL(tss.getMaCL());
            ts.setThongTinTS(tss.getThongTinTS());
            ts.setGhiChuTS(tss.getGhiChuTS());
            ts.setNgayRaMat(tss.getNgayRaMat());
        }
        em.getTransaction().commit();
        return true;
    }
    
    public static void main(String[] args) {
        TrangSucDao dao= new TrangSucDao();
//        System.out.println("Đọc danh sách tất cả trang sức");
//        for(TrangSuc ts:dao.getAll()){
//            System.out.println(ts.getTenTS()+ "-" + ts.getThuongHieu());
//        }

//        //Tìm
//        System.out.println("Tim Theo Ten nhân viên");
//        for(TrangSuc ts:dao.search("a")){
//            System.out.println(ts.getTenNV() + "-" + ts.getNamSinh());
//        }
        
        // Thêm
//        TrangSuc ts= new TrangSuc();
//        ts.setTenNV("Mai");
//        ts.setHoNV("Nguyen");
//        ts.setNoiSinh("Đà Nãng");
//        dao.Insert(ts);
        
        //Update
//         TrangSuc ts= new TrangSuc();
//         ts.setHoNV("Trần Thanh");
//         dao.Update(15,ts);

        // Lấy ngẫu nhiên
//        System.out.println("Đọc danh sách tất cả trang sức");
//        for(TrangSuc ts:dao.layngaunhien(2)){
//            System.out.println(ts.getTenTS()+ "-" + ts.getThuongHieu());
//        }


            // Lấy theo ma loai
            System.out.println("Đọc danh sách tất cả trang sức co ma loai???");
            for(TrangSuc ts:dao.getAllofMaLoaiTS(1)){
                System.out.println(ts.getTenTS()+ "-" + ts.getThuongHieu());
            }
    }
}
