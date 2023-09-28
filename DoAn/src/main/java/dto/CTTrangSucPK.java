/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Admin
 */
@Embeddable
public class CTTrangSucPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "MaTS")
    private int maTS;
    @Basic(optional = false)
    @NotNull
    @Column(name = "MaKC")
    private int maKC;

    public CTTrangSucPK() {
    }

    public CTTrangSucPK(int maTS, int maKC) {
        this.maTS = maTS;
        this.maKC = maKC;
    }

    public int getMaTS() {
        return maTS;
    }

    public void setMaTS(int maTS) {
        this.maTS = maTS;
    }

    public int getMaKC() {
        return maKC;
    }

    public void setMaKC(int maKC) {
        this.maKC = maKC;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) maTS;
        hash += (int) maKC;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CTTrangSucPK)) {
            return false;
        }
        CTTrangSucPK other = (CTTrangSucPK) object;
        if (this.maTS != other.maTS) {
            return false;
        }
        if (this.maKC != other.maKC) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dto.CTTrangSucPK[ maTS=" + maTS + ", maKC=" + maKC + " ]";
    }
    
}
