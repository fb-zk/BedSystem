package com.baisui.BedSystem.entity.dto;

import lombok.Data;

@Data
public class ChairUserDTO {

    private String userId;

    private String username;

    private String phone;

    private String name;

    // 创建时间
    private String recordTime;

    //押金状态（未支付：0   已支付：1）
    private String  cashPledgeState;

    //账户余额
    private Double balance;




}
