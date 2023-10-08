/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
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
@Table(name = "ChatLieu")
@NamedQueries({
    @NamedQuery(name = "ChatLieu.findAll", query = "SELECT c FROM ChatLieu c"),
    @NamedQuery(name = "ChatLieu.findByMaCL", query = "SELECT c FROM ChatLieu c WHERE c.maCL = :maCL"),
    @NamedQuery(name = "ChatLieu.findByTenCL", query = "SELECT c FROM ChatLieu c WHERE c.tenCL = :tenCL")})
public class ChatLieu implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "MaCL")
    private Integer maCL;
    @Size(max = 50)
    @Column(name = "TenCL")
    private String tenCL;
    @OneToMany(mappedBy = "maCL")
    private List<TrangSuc> trangSucList;

    public ChatLieu() {
    }

    public ChatLieu(Integer maCL) {
        this.maCL = maCL;
    }

    public Integer getMaCL() {
        return maCL;
    }

    public void setMaCL(Integer maCL) {
        this.maCL = maCL;
    }

    public String getTenCL() {
        return tenCL;
    }

    public void setTenCL(String tenCL) {
        this.tenCL = tenCL;
    }

    public List<TrangSuc> getTrangSucList() {
        return trangSucList;
    }

    public void setTrangSucList(List<TrangSuc> trangSucList) {
        this.trangSucList = trangSucList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maCL != null ? maCL.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ChatLieu)) {
            return false;
        }
        ChatLieu other = (ChatLieu) object;
        if ((this.maCL == null && other.maCL != null) || (this.maCL != null && !this.maCL.equals(other.maCL))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dto.ChatLieu[ maCL=" + maCL + " ]";
    }
    
}
