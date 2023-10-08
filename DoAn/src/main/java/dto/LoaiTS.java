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
@Table(name = "LoaiTS")
@NamedQueries({
    @NamedQuery(name = "LoaiTS.findAll", query = "SELECT l FROM LoaiTS l"),
    @NamedQuery(name = "LoaiTS.findByMaLoaiTS", query = "SELECT l FROM LoaiTS l WHERE l.maLoaiTS = :maLoaiTS"),
    @NamedQuery(name = "LoaiTS.findByTenLoaiTS", query = "SELECT l FROM LoaiTS l WHERE l.tenLoaiTS = :tenLoaiTS")})
public class LoaiTS implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "MaLoaiTS")
    private Integer maLoaiTS;
    @Size(max = 50)
    @Column(name = "TenLoaiTS")
    private String tenLoaiTS;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "maLoaiTS")
    private List<TrangSuc> trangSucList;

    public LoaiTS() {
    }

    public LoaiTS(Integer maLoaiTS) {
        this.maLoaiTS = maLoaiTS;
    }

    public Integer getMaLoaiTS() {
        return maLoaiTS;
    }

    public void setMaLoaiTS(Integer maLoaiTS) {
        this.maLoaiTS = maLoaiTS;
    }

    public String getTenLoaiTS() {
        return tenLoaiTS;
    }

    public void setTenLoaiTS(String tenLoaiTS) {
        this.tenLoaiTS = tenLoaiTS;
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
        hash += (maLoaiTS != null ? maLoaiTS.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof LoaiTS)) {
            return false;
        }
        LoaiTS other = (LoaiTS) object;
        if ((this.maLoaiTS == null && other.maLoaiTS != null) || (this.maLoaiTS != null && !this.maLoaiTS.equals(other.maLoaiTS))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dto.LoaiTS[ maLoaiTS=" + maLoaiTS + " ]";
    }
    
}
