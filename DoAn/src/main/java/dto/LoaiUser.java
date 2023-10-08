/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "LoaiUser")
@NamedQueries({
    @NamedQuery(name = "LoaiUser.findAll", query = "SELECT l FROM LoaiUser l"),
    @NamedQuery(name = "LoaiUser.findByMaLoaiUser", query = "SELECT l FROM LoaiUser l WHERE l.maLoaiUser = :maLoaiUser"),
    @NamedQuery(name = "LoaiUser.findByTenLoaiUser", query = "SELECT l FROM LoaiUser l WHERE l.tenLoaiUser = :tenLoaiUser")})
public class LoaiUser implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "MaLoaiUser")
    private Integer maLoaiUser;
    @Size(max = 50)
    @Column(name = "TenLoaiUser")
    private String tenLoaiUser;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "maLoaiUser")
    private List<Users> usersList;

    public LoaiUser() {
    }

    public LoaiUser(Integer maLoaiUser) {
        this.maLoaiUser = maLoaiUser;
    }

    public Integer getMaLoaiUser() {
        return maLoaiUser;
    }

    public void setMaLoaiUser(Integer maLoaiUser) {
        this.maLoaiUser = maLoaiUser;
    }

    public String getTenLoaiUser() {
        return tenLoaiUser;
    }

    public void setTenLoaiUser(String tenLoaiUser) {
        this.tenLoaiUser = tenLoaiUser;
    }

    public List<Users> getUsersList() {
        return usersList;
    }

    public void setUsersList(List<Users> usersList) {
        this.usersList = usersList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maLoaiUser != null ? maLoaiUser.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof LoaiUser)) {
            return false;
        }
        LoaiUser other = (LoaiUser) object;
        if ((this.maLoaiUser == null && other.maLoaiUser != null) || (this.maLoaiUser != null && !this.maLoaiUser.equals(other.maLoaiUser))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dto.LoaiUser[ maLoaiUser=" + maLoaiUser + " ]";
    }
    
}
