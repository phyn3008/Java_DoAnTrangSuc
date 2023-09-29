/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "HinhAnh")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "HinhAnh.findAll", query = "SELECT h FROM HinhAnh h"),
    @NamedQuery(name = "HinhAnh.findByMaHinh", query = "SELECT h FROM HinhAnh h WHERE h.maHinh = :maHinh"),
    @NamedQuery(name = "HinhAnh.findByTenHinh", query = "SELECT h FROM HinhAnh h WHERE h.tenHinh = :tenHinh"),
    @NamedQuery(name = "HinhAnh.findByMaTS", query = "SELECT h FROM HinhAnh h WHERE h.maTS.maTS = :maTS")})
public class HinhAnh implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "MaHinh")
    private Integer maHinh;
    @Size(max = 2147483647)
    @Column(name = "TenHinh")
    private String tenHinh;
    @JoinColumn(name = "MaTS", referencedColumnName = "MaTS")
    @ManyToOne
    private TrangSuc maTS;

    public HinhAnh() {
    }

    public HinhAnh(Integer maHinh) {
        this.maHinh = maHinh;
    }

    public Integer getMaHinh() {
        return maHinh;
    }

    public void setMaHinh(Integer maHinh) {
        this.maHinh = maHinh;
    }

    public String getTenHinh() {
        return tenHinh;
    }

    public void setTenHinh(String tenHinh) {
        this.tenHinh = tenHinh;
    }

    public TrangSuc getMaTS() {
        return maTS;
    }

    public void setMaTS(TrangSuc maTS) {
        this.maTS = maTS;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maHinh != null ? maHinh.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof HinhAnh)) {
            return false;
        }
        HinhAnh other = (HinhAnh) object;
        if ((this.maHinh == null && other.maHinh != null) || (this.maHinh != null && !this.maHinh.equals(other.maHinh))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dto.HinhAnh[ maHinh=" + maHinh + " ]";
    }
    
}
