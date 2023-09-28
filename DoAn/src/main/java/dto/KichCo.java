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
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "KichCo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "KichCo.findAll", query = "SELECT k FROM KichCo k"),
    @NamedQuery(name = "KichCo.findByMaKC", query = "SELECT k FROM KichCo k WHERE k.maKC = :maKC"),
    @NamedQuery(name = "KichCo.findByTenKC", query = "SELECT k FROM KichCo k WHERE k.tenKC = :tenKC"),
    @NamedQuery(name = "KichCo.findByGhiChuKC", query = "SELECT k FROM KichCo k WHERE k.ghiChuKC = :ghiChuKC")})
public class KichCo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "MaKC")
    private Integer maKC;
    @Size(max = 10)
    @Column(name = "TenKC")
    private String tenKC;
    @Size(max = 2147483647)
    @Column(name = "GhiChuKC")
    private String ghiChuKC;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "kichCo")
    private List<CTTrangSuc> cTTrangSucList;

    public KichCo() {
    }

    public KichCo(Integer maKC) {
        this.maKC = maKC;
    }

    public Integer getMaKC() {
        return maKC;
    }

    public void setMaKC(Integer maKC) {
        this.maKC = maKC;
    }

    public String getTenKC() {
        return tenKC;
    }

    public void setTenKC(String tenKC) {
        this.tenKC = tenKC;
    }

    public String getGhiChuKC() {
        return ghiChuKC;
    }

    public void setGhiChuKC(String ghiChuKC) {
        this.ghiChuKC = ghiChuKC;
    }

    @XmlTransient
    public List<CTTrangSuc> getCTTrangSucList() {
        return cTTrangSucList;
    }

    public void setCTTrangSucList(List<CTTrangSuc> cTTrangSucList) {
        this.cTTrangSucList = cTTrangSucList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maKC != null ? maKC.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof KichCo)) {
            return false;
        }
        KichCo other = (KichCo) object;
        if ((this.maKC == null && other.maKC != null) || (this.maKC != null && !this.maKC.equals(other.maKC))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dto.KichCo[ maKC=" + maKC + " ]";
    }
    
}
