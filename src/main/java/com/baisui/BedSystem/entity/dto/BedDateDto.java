package com.baisui.BedSystem.entity.dto;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @description: ${description}
 * @author:
 * @date: 2019/11/1:9:26
 */
@Data
@Accessors(chain = true)
public class BedDateDto {

    //陪护椅数量
    private int amount;

    //使用次数
    private int times;

    //使用时长
    private long usedTime;

    //使用费用
    private float usedCost;

    //开始时间
    private String startTime;

    //结束时间
    private String endTime;


}
