package dto;

import dto.TrangSuc;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2023-09-29T16:33:38")
@StaticMetamodel(LoaiTS.class)
public class LoaiTS_ { 

    public static volatile SingularAttribute<LoaiTS, String> tenLoaiTS;
    public static volatile SingularAttribute<LoaiTS, Integer> maLoaiTS;
    public static volatile ListAttribute<LoaiTS, TrangSuc> trangSucList;

}