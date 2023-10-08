package dto;

import dto.LoaiUser;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2023-10-09T03:27:16")
@StaticMetamodel(Users.class)
public class Users_ { 

    public static volatile SingularAttribute<Users, Integer> maUser;
    public static volatile SingularAttribute<Users, Date> ngaySinhUser;
    public static volatile SingularAttribute<Users, String> passWord;
    public static volatile SingularAttribute<Users, String> emailUser;
    public static volatile SingularAttribute<Users, String> tenDangNhap;
    public static volatile SingularAttribute<Users, String> hoTenUser;
    public static volatile SingularAttribute<Users, Boolean> isAdmin;
    public static volatile SingularAttribute<Users, String> chucVu;
    public static volatile SingularAttribute<Users, Boolean> gioiTinhUser;
    public static volatile SingularAttribute<Users, String> diaChiUser;
    public static volatile SingularAttribute<Users, Long> sDTUser;
    public static volatile SingularAttribute<Users, Long> sTKUser;
    public static volatile SingularAttribute<Users, LoaiUser> maLoaiUser;
    public static volatile SingularAttribute<Users, Date> ngayBD;
    public static volatile SingularAttribute<Users, Integer> heSoLuong;
    public static volatile SingularAttribute<Users, String> ghiChuNV;

}