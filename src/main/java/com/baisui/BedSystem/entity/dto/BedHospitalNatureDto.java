package com.baisui.BedSystem.entity.dto;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class BedHospitalNatureDto {

    //医院
    private String hospitalName;

    //医院等级 3：三级，2：二级，1：一级 0：其他
    private int level;

    //性质
    private String nature;

    //陪护椅数量
    private int amount;

    //使用次数
    private int times;

    //使用时长
    private long usedTime;

    //使用费用
    private float usedCost;

}
