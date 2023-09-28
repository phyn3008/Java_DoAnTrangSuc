/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "TrangSuc")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TrangSuc.findAll", query = "SELECT t FROM TrangSuc t"),
    @NamedQuery(name = "TrangSuc.findByMaTS", query = "SELECT t FROM TrangSuc t WHERE t.maTS = :maTS"),
    @NamedQuery(name = "TrangSuc.findByTenTS", query = "SELECT t FROM TrangSuc t WHERE t.tenTS = :tenTS"),
    @NamedQuery(name = "TrangSuc.findByDonGiaSP", query = "SELECT t FROM TrangSuc t WHERE t.donGiaSP = :donGiaSP"),
    @NamedQuery(name = "TrangSuc.findByTrongLuong", query = "SELECT t FROM TrangSuc t WHERE t.trongLuong = :trongLuong"),
    @NamedQuery(name = "TrangSuc.findByHamLuongChatLieu", query = "SELECT t FROM TrangSuc t WHERE t.hamLuongChatLieu = :hamLuongChatLieu"),
    @NamedQuery(name = "TrangSuc.findByLoaiDaChinh", query = "SELECT t FROM TrangSuc t WHERE t.loaiDaChinh = :loaiDaChinh"),
    @NamedQuery(name = "TrangSuc.findByLoaiDaPhu", query = "SELECT t FROM TrangSuc t WHERE t.loaiDaPhu = :loaiDaPhu"),
    @NamedQuery(name = "TrangSuc.findByMauDa", query = "SELECT t FROM TrangSuc t WHERE t.mauDa = :mauDa"),
    @NamedQuery(name = "TrangSuc.findBySoVienDaChinh", query = "SELECT t FROM TrangSuc t WHERE t.soVienDaChinh = :soVienDaChinh"),
    @NamedQuery(name = "TrangSuc.findBySoVienDaPhu", query = "SELECT t FROM TrangSuc t WHERE t.soVienDaPhu = :soVienDaPhu"),
    @NamedQuery(name = "TrangSuc.findByBoSuuTap", query = "SELECT t FROM TrangSuc t WHERE t.boSuuTap = :boSuuTap"),
    @NamedQuery(name = "TrangSuc.findByThuongHieu", query = "SELECT t FROM TrangSuc t WHERE t.thuongHieu = :thuongHieu"),
    @NamedQuery(name = "TrangSuc.findByGioiTinh", query = "SELECT t FROM TrangSuc t WHERE t.gioiTinh = :gioiTinh"),
    @NamedQuery(name = "TrangSuc.findByThongTinTS", query = "SELECT t FROM TrangSuc t WHERE t.thongTinTS = :thongTinTS"),
    @NamedQuery(name = "TrangSuc.findByGhiChuTS", query = "SELECT t FROM TrangSuc t WHERE t.ghiChuTS = :ghiChuTS"),
    @NamedQuery(name = "TrangSuc.findByNgayRaMat", query = "SELECT t FROM TrangSuc t WHERE t.ngayRaMat = :ngayRaMat")})
public class TrangSuc implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "MaTS")
    private Integer maTS;
    @Size(max = 2147483647)
    @Column(name = "TenTS")
    private String tenTS;
    @Column(name = "DonGiaSP")
    private Integer donGiaSP;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "TrongLuong")
    private Double trongLuong;
    @Column(name = "HamLuongChatLieu")
    private Double hamLuongChatLieu;
    @Size(max = 50)
    @Column(name = "LoaiDaChinh")
    private String loaiDaChinh;
    @Size(max = 50)
    @Column(name = "LoaiDaPhu")
    private String loaiDaPhu;
    @Size(max = 50)
    @Column(name = "MauDa")
    private String mauDa;
    @Column(name = "SoVienDaChinh")
    private Integer soVienDaChinh;
    @Column(name = "SoVienDaPhu")
    private Integer soVienDaPhu;
    @Size(max = 2147483647)
    @Column(name = "BoSuuTap")
    private String boSuuTap;
    @Size(max = 50)
    @Column(name = "ThuongHieu")
    private String thuongHieu;
    @Basic(optional = false)
    @NotNull
    @Column(name = "GioiTinh")
    private boolean gioiTinh;
    @Size(max = 2147483647)
    @Column(name = "ThongTinTS")
    private String thongTinTS;
    @Size(max = 2147483647)
    @Column(name = "GhiChuTS")
    private String ghiChuTS;
    @Column(name = "NgayRaMat")
    @Temporal(TemporalType.DATE)
    private Date ngayRaMat;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "trangSuc")
    private List<CTTrangSuc> cTTrangSucList;
    @JoinColumn(name = "MaCL", referencedColumnName = "MaCL")
    @ManyToOne
    private ChatLieu maCL;
    @JoinColumn(name = "MaLoaiTS", referencedColumnName = "MaLoaiTS")
    @ManyToOne(optional = false)
    private LoaiTS maLoaiTS;
    @OneToMany(mappedBy = "maTS")
    private List<HinhAnh> hinhAnhList;

    public TrangSuc() {
    }

    public TrangSuc(Integer maTS) {
        this.maTS = maTS;
    }

    public TrangSuc(Integer maTS, boolean gioiTinh) {
        this.maTS = maTS;
        this.gioiTinh = gioiTinh;
    }

    public Integer getMaTS() {
        return maTS;
    }

    public void setMaTS(Integer maTS) {
        this.maTS = maTS;
    }

    public String getTenTS() {
        return tenTS;
    }

    public void setTenTS(String tenTS) {
        this.tenTS = tenTS;
    }

    public Integer getDonGiaSP() {
        return donGiaSP;
    }

    public void setDonGiaSP(Integer donGiaSP) {
        this.donGiaSP = donGiaSP;
    }

    public Double getTrongLuong() {
        return trongLuong;
    }

    public void setTrongLuong(Double trongLuong) {
        this.trongLuong = trongLuong;
    }

    public Double getHamLuongChatLieu() {
        return hamLuongChatLieu;
    }

    public void setHamLuongChatLieu(Double hamLuongChatLieu) {
        this.hamLuongChatLieu = hamLuongChatLieu;
    }

    public String getLoaiDaChinh() {
        return loaiDaChinh;
    }

    public void setLoaiDaChinh(String loaiDaChinh) {
        this.loaiDaChinh = loaiDaChinh;
    }

    public String getLoaiDaPhu() {
        return loaiDaPhu;
    }

    public void setLoaiDaPhu(String loaiDaPhu) {
        this.loaiDaPhu = loaiDaPhu;
    }

    public String getMauDa() {
        return mauDa;
    }

    public void setMauDa(String mauDa) {
        this.mauDa = mauDa;
    }

    public Integer getSoVienDaChinh() {
        return soVienDaChinh;
    }

    public void setSoVienDaChinh(Integer soVienDaChinh) {
        this.soVienDaChinh = soVienDaChinh;
    }

    public Integer getSoVienDaPhu() {
        return soVienDaPhu;
    }

    public void setSoVienDaPhu(Integer soVienDaPhu) {
        this.soVienDaPhu = soVienDaPhu;
    }

    public String getBoSuuTap() {
        return boSuuTap;
    }

    public void setBoSuuTap(String boSuuTap) {
        this.boSuuTap = boSuuTap;
    }

    public String getThuongHieu() {
        return thuongHieu;
    }

    public void setThuongHieu(String thuongHieu) {
        this.thuongHieu = thuongHieu;
    }

    public boolean getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(boolean gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getThongTinTS() {
        return thongTinTS;
    }

    public void setThongTinTS(String thongTinTS) {
        this.thongTinTS = thongTinTS;
    }

    public String getGhiChuTS() {
        return ghiChuTS;
    }

    public void setGhiChuTS(String ghiChuTS) {
        this.ghiChuTS = ghiChuTS;
    }

    public Date getNgayRaMat() {
        return ngayRaMat;
    }

    public void setNgayRaMat(Date ngayRaMat) {
        this.ngayRaMat = ngayRaMat;
    }

    @XmlTransient
    public List<CTTrangSuc> getCTTrangSucList() {
        return cTTrangSucList;
    }

    public void setCTTrangSucList(List<CTTrangSuc> cTTrangSucList) {
        this.cTTrangSucList = cTTrangSucList;
    }

    public ChatLieu getMaCL() {
        return maCL;
    }

    public void setMaCL(ChatLieu maCL) {
        this.maCL = maCL;
    }

    public LoaiTS getMaLoaiTS() {
        return maLoaiTS;
    }

    public void setMaLoaiTS(LoaiTS maLoaiTS) {
        this.maLoaiTS = maLoaiTS;
    }

    @XmlTransient
    public List<HinhAnh> getHinhAnhList() {
        return hinhAnhList;
    }

    public void setHinhAnhList(List<HinhAnh> hinhAnhList) {
        this.hinhAnhList = hinhAnhList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maTS != null ? maTS.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TrangSuc)) {
            return false;
        }
        TrangSuc other = (TrangSuc) object;
        if ((this.maTS == null && other.maTS != null) || (this.maTS != null && !this.maTS.equals(other.maTS))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dto.TrangSuc[ maTS=" + maTS + " ]";
    }
    
}
