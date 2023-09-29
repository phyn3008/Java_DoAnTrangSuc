package dto;

import dto.CTTrangSuc;
import dto.ChatLieu;
import dto.HinhAnh;
import dto.LoaiTS;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2023-09-29T16:33:38")
@StaticMetamodel(TrangSuc.class)
public class TrangSuc_ { 

    public static volatile SingularAttribute<TrangSuc, Integer> maTS;
    public static volatile SingularAttribute<TrangSuc, Integer> donGiaSP;
    public static volatile SingularAttribute<TrangSuc, String> loaiDaPhu;
    public static volatile SingularAttribute<TrangSuc, String> ghiChuTS;
    public static volatile SingularAttribute<TrangSuc, Date> ngayRaMat;
    public static volatile SingularAttribute<TrangSuc, LoaiTS> maLoaiTS;
    public static volatile ListAttribute<TrangSuc, CTTrangSuc> cTTrangSucList;
    public static volatile SingularAttribute<TrangSuc, Integer> soVienDaPhu;
    public static volatile SingularAttribute<TrangSuc, Boolean> gioiTinh;
    public static volatile SingularAttribute<TrangSuc, Double> trongLuong;
    public static volatile SingularAttribute<TrangSuc, Integer> soVienDaChinh;
    public static volatile SingularAttribute<TrangSuc, String> thuongHieu;
    public static volatile SingularAttribute<TrangSuc, String> boSuuTap;
    public static volatile SingularAttribute<TrangSuc, String> tenTS;
    public static volatile SingularAttribute<TrangSuc, ChatLieu> maCL;
    public static volatile ListAttribute<TrangSuc, HinhAnh> hinhAnhList;
    public static volatile SingularAttribute<TrangSuc, String> mauDa;
    public static volatile SingularAttribute<TrangSuc, String> thongTinTS;
    public static volatile SingularAttribute<TrangSuc, String> loaiDaChinh;
    public static volatile SingularAttribute<TrangSuc, Double> hamLuongChatLieu;

}