/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.LoaiUser;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Admin
 */
public class LoaiUSDao {
    public EntityManagerFactory emf= Persistence.createEntityManagerFactory("DoAnJPATrangSuc");
    public List<LoaiUser> getAll(){
        EntityManager em= emf.createEntityManager();
        Query q= em.createNamedQuery("LoaiUser.findAll");
       return q.getResultList();
    }  
}
