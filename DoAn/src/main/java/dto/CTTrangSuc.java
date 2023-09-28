/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "CT_TrangSuc")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CTTrangSuc.findAll", query = "SELECT c FROM CTTrangSuc c"),
    @NamedQuery(name = "CTTrangSuc.findByMaTS", query = "SELECT c FROM CTTrangSuc c WHERE c.cTTrangSucPK.maTS = :maTS"),
    @NamedQuery(name = "CTTrangSuc.findByMaKC", query = "SELECT c FROM CTTrangSuc c WHERE c.cTTrangSucPK.maKC = :maKC"),
    @NamedQuery(name = "CTTrangSuc.findBySoLuong", query = "SELECT c FROM CTTrangSuc c WHERE c.soLuong = :soLuong")})
public class CTTrangSuc implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected CTTrangSucPK cTTrangSucPK;
    @Column(name = "SoLuong")
    private Integer soLuong;
    @JoinColumn(name = "MaKC", referencedColumnName = "MaKC", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private KichCo kichCo;
    @JoinColumn(name = "MaTS", referencedColumnName = "MaTS", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private TrangSuc trangSuc;

    public CTTrangSuc() {
    }

    public CTTrangSuc(CTTrangSucPK cTTrangSucPK) {
        this.cTTrangSucPK = cTTrangSucPK;
    }

    public CTTrangSuc(int maTS, int maKC) {
        this.cTTrangSucPK = new CTTrangSucPK(maTS, maKC);
    }

    public CTTrangSucPK getCTTrangSucPK() {
        return cTTrangSucPK;
    }

    public void setCTTrangSucPK(CTTrangSucPK cTTrangSucPK) {
        this.cTTrangSucPK = cTTrangSucPK;
    }

    public Integer getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }

    public KichCo getKichCo() {
        return kichCo;
    }

    public void setKichCo(KichCo kichCo) {
        this.kichCo = kichCo;
    }

    public TrangSuc getTrangSuc() {
        return trangSuc;
    }

    public void setTrangSuc(TrangSuc trangSuc) {
        this.trangSuc = trangSuc;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cTTrangSucPK != null ? cTTrangSucPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CTTrangSuc)) {
            return false;
        }
        CTTrangSuc other = (CTTrangSuc) object;
        if ((this.cTTrangSucPK == null && other.cTTrangSucPK != null) || (this.cTTrangSucPK != null && !this.cTTrangSucPK.equals(other.cTTrangSucPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dto.CTTrangSuc[ cTTrangSucPK=" + cTTrangSucPK + " ]";
    }
    
}
