/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.LoaiTS;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Admin
 */
public class LoaiTSDao {
    public EntityManagerFactory emf= Persistence.createEntityManagerFactory("DoAnJPATrangSuc");
    //phuong thuc lay tat ca danh ba
    public List<LoaiTS> getAll(){
        EntityManager em= emf.createEntityManager();
        // Truy vấn theo cái tên namequery trong class sinh ra
        Query q= em.createNamedQuery("LoaiTS.findAll");
       return q.getResultList();
    }  
    
    //
    public List<LoaiTS> search(String name){
        EntityManager em= emf.createEntityManager();
        // Truy vấn theo cái query tự viết
        Query q= em.createQuery("select n from LoaiTS n where n.tenTS like :tenTS");
        q.setParameter("tenTS","%"  + name + "%");
       return q.getResultList();
    }  
    
    public LoaiTS find(int mats){
        EntityManager em= emf.createEntityManager();
       return em.find(LoaiTS.class, mats);
    }  
    
    // thêm
    public boolean Insert(LoaiTS ts){
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
        LoaiTS ts= em.find(LoaiTS.class, mats);
        if(ts!=null){
            em.remove(ts);
        }
        em.getTransaction().commit();
        return true;
    }
    //update
//    public boolean Update(LoaiTS tss){
//        EntityManager em= emf.createEntityManager();
//        em.getTransaction().begin();
//        LoaiTS ts= em.find(LoaiTS.class, tss.getMaTS());
//        if(ts!=null){
//            ts.setMaLoaiTS(tss.getMaLoaiTS());
//            ts.setTenTS(tss.getTenTS());
//            ts.setDonGiaSP(tss.getDonGiaSP());
//            ts.setTrongLuong(tss.getTrongLuong());
//            ts.setHamLuongChatLieu(tss.getHamLuongChatLieu());
//            ts.setLoaiDaChinh(tss.getLoaiDaChinh());
//            ts.setLoaiDaPhu(tss.getLoaiDaPhu());
//            ts.setMauDa(tss.getMauDa());
//            ts.setSoVienDaChinh(tss.getSoVienDaChinh());
//            ts.setSoVienDaPhu(tss.getSoVienDaPhu());
//            ts.setBoSuuTap(tss.getBoSuuTap());
//            ts.setThuongHieu(tss.getThuongHieu());
//            
//            ts.setGioiTinh(tss.getGioiTinh());
//            ts.setMaCL(tss.getMaCL());
//            ts.setThongTinTS(tss.getThongTinTS());
//            ts.setGhiChuTS(tss.getGhiChuTS());
//            ts.setNgayRaMat(tss.getNgayRaMat());
//        }
//        em.getTransaction().commit();
//        return true;
//    }
    
    public static void main(String[] args) {
        LoaiTSDao dao= new LoaiTSDao();
        System.out.println("Đọc danh sách tất cả loại trang sức");
        for(LoaiTS ts:dao.getAll()){
            System.out.println(ts.getMaLoaiTS()+ "-" + ts.getTenLoaiTS());
        }

//        //Tìm
//        System.out.println("Tim Theo Ten nhân viên");
//        for(LoaiTS ts:dao.search("a")){
//            System.out.println(ts.getTenNV() + "-" + ts.getNamSinh());
//        }
        
        // Thêm
//        LoaiTS ts= new LoaiTS();
//        ts.setTenNV("Mai");
//        ts.setHoNV("Nguyen");
//        ts.setNoiSinh("Đà Nãng");
//        dao.Insert(ts);
        
        //Update
//         LoaiTS ts= new LoaiTS();
//         ts.setHoNV("Trần Thanh");
//         dao.Update(15,ts);

    }
}
