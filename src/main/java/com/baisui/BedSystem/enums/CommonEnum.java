package com.baisui.BedSystem.enums;

import lombok.Getter;

/**
 * @description: 统一返回泛型定义
 * @author: Chenye
 * @date: 2019/9/24:14:43
 */
@Getter
public enum CommonEnum {

    SUCCESS(1,"成功"),
    FAIL(0,"失败")
    ;

    private int code;

    private String msg;

    CommonEnum(int code, String msg ){
        this.code = code;
        this.msg = msg;
    }

    public static CommonEnum getPaymentType(int value) {
        for (CommonEnum commonEnum : CommonEnum.values()) {
            if (value == commonEnum.getCode()) {
                return commonEnum;
            }
        }
        return null;
    }

}
