package com.baisui.BedSystem.entity.dto;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @description: ${description}
 * @author:
 * @date: 2019/11/5:9:24
 */
@Data
@Accessors(chain = true)
public class SysUserDto {

    private String id;
    // 用户名
    private String userName;

    // 姓名
    private String name;

    // 手机号
    private String mobileno;

    // 角色名称
    private String roleName;

    private String passWord;

    private String type;

}
