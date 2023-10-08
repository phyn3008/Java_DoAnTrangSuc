/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "Users")
@NamedQueries({
    @NamedQuery(name = "Users.findAll", query = "SELECT u FROM Users u"),
    @NamedQuery(name = "Users.findByMaUser", query = "SELECT u FROM Users u WHERE u.maUser = :maUser"),
    @NamedQuery(name = "Users.findByHoTenUser", query = "SELECT u FROM Users u WHERE u.hoTenUser = :hoTenUser"),
    @NamedQuery(name = "Users.findByNgaySinhUser", query = "SELECT u FROM Users u WHERE u.ngaySinhUser = :ngaySinhUser"),
    @NamedQuery(name = "Users.findByGioiTinhUser", query = "SELECT u FROM Users u WHERE u.gioiTinhUser = :gioiTinhUser"),
    @NamedQuery(name = "Users.findByDiaChiUser", query = "SELECT u FROM Users u WHERE u.diaChiUser = :diaChiUser"),
    @NamedQuery(name = "Users.findBySDTUser", query = "SELECT u FROM Users u WHERE u.sDTUser = :sDTUser"),
    @NamedQuery(name = "Users.findByEmailUser", query = "SELECT u FROM Users u WHERE u.emailUser = :emailUser"),
    @NamedQuery(name = "Users.findByTenDangNhap", query = "SELECT u FROM Users u WHERE u.tenDangNhap = :tenDangNhap"),
    @NamedQuery(name = "Users.findByPassWord", query = "SELECT u FROM Users u WHERE u.passWord = :passWord"),
    @NamedQuery(name = "Users.findByNgayBD", query = "SELECT u FROM Users u WHERE u.ngayBD = :ngayBD"),
    @NamedQuery(name = "Users.findByHeSoLuong", query = "SELECT u FROM Users u WHERE u.heSoLuong = :heSoLuong"),
    @NamedQuery(name = "Users.findByChucVu", query = "SELECT u FROM Users u WHERE u.chucVu = :chucVu"),
    @NamedQuery(name = "Users.findBySTKUser", query = "SELECT u FROM Users u WHERE u.sTKUser = :sTKUser"),
    @NamedQuery(name = "Users.findByGhiChuNV", query = "SELECT u FROM Users u WHERE u.ghiChuNV = :ghiChuNV"),
    @NamedQuery(name = "Users.findByIsAdmin", query = "SELECT u FROM Users u WHERE u.isAdmin = :isAdmin")})
public class Users implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "MaUser")
    private Integer maUser;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "HoTenUser")
    private String hoTenUser;
    @Basic(optional = false)
    @NotNull
    @Column(name = "NgaySinhUser")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngaySinhUser;
    @Column(name = "GioiTinhUser")
    private Boolean gioiTinhUser;
    @Size(max = 1073741823)
    @Column(name = "DiaChiUser")
    private String diaChiUser;
    @Basic(optional = false)
    @NotNull
    @Column(name = "SDTUser")
    private long sDTUser;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 1073741823)
    @Column(name = "EmailUser")
    private String emailUser;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "TenDangNhap")
    private String tenDangNhap;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "PassWord")
    private String passWord;
    @Column(name = "NgayBD")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayBD;
    @Column(name = "HeSoLuong")
    private Integer heSoLuong;
    @Size(max = 50)
    @Column(name = "ChucVu")
    private String chucVu;
    @Column(name = "STKUser")
    private Long sTKUser;
    @Size(max = 1073741823)
    @Column(name = "GhiChuNV")
    private String ghiChuNV;
    @Column(name = "IsAdmin")
    private Boolean isAdmin;
    @JoinColumn(name = "MaLoaiUser", referencedColumnName = "MaLoaiUser")
    @ManyToOne(optional = false)
    private LoaiUser maLoaiUser;

    public Users() {
    }

    public Users(Integer maUser) {
        this.maUser = maUser;
    }

    public Users(Integer maUser, String hoTenUser, Date ngaySinhUser, long sDTUser, String emailUser, String tenDangNhap, String passWord) {
        this.maUser = maUser;
        this.hoTenUser = hoTenUser;
        this.ngaySinhUser = ngaySinhUser;
        this.sDTUser = sDTUser;
        this.emailUser = emailUser;
        this.tenDangNhap = tenDangNhap;
        this.passWord = passWord;
    }

    public Integer getMaUser() {
        return maUser;
    }

    public void setMaUser(Integer maUser) {
        this.maUser = maUser;
    }

    public String getHoTenUser() {
        return hoTenUser;
    }

    public void setHoTenUser(String hoTenUser) {
        this.hoTenUser = hoTenUser;
    }

    public Date getNgaySinhUser() {
        return ngaySinhUser;
    }

    public void setNgaySinhUser(Date ngaySinhUser) {
        this.ngaySinhUser = ngaySinhUser;
    }

    public Boolean getGioiTinhUser() {
        return gioiTinhUser;
    }

    public void setGioiTinhUser(Boolean gioiTinhUser) {
        this.gioiTinhUser = gioiTinhUser;
    }

    public String getDiaChiUser() {
        return diaChiUser;
    }

    public void setDiaChiUser(String diaChiUser) {
        this.diaChiUser = diaChiUser;
    }

    public long getSDTUser() {
        return sDTUser;
    }

    public void setSDTUser(long sDTUser) {
        this.sDTUser = sDTUser;
    }

    public String getEmailUser() {
        return emailUser;
    }

    public void setEmailUser(String emailUser) {
        this.emailUser = emailUser;
    }

    public String getTenDangNhap() {
        return tenDangNhap;
    }

    public void setTenDangNhap(String tenDangNhap) {
        this.tenDangNhap = tenDangNhap;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public Date getNgayBD() {
        return ngayBD;
    }

    public void setNgayBD(Date ngayBD) {
        this.ngayBD = ngayBD;
    }

    public Integer getHeSoLuong() {
        return heSoLuong;
    }

    public void setHeSoLuong(Integer heSoLuong) {
        this.heSoLuong = heSoLuong;
    }

    public String getChucVu() {
        return chucVu;
    }

    public void setChucVu(String chucVu) {
        this.chucVu = chucVu;
    }

    public Long getSTKUser() {
        return sTKUser;
    }

    public void setSTKUser(Long sTKUser) {
        this.sTKUser = sTKUser;
    }

    public String getGhiChuNV() {
        return ghiChuNV;
    }

    public void setGhiChuNV(String ghiChuNV) {
        this.ghiChuNV = ghiChuNV;
    }

    public Boolean getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(Boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public LoaiUser getMaLoaiUser() {
        return maLoaiUser;
    }

    public void setMaLoaiUser(LoaiUser maLoaiUser) {
        this.maLoaiUser = maLoaiUser;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maUser != null ? maUser.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Users)) {
            return false;
        }
        Users other = (Users) object;
        if ((this.maUser == null && other.maUser != null) || (this.maUser != null && !this.maUser.equals(other.maUser))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "dto.Users[ maUser=" + maUser + " ]";
    }
    
}
