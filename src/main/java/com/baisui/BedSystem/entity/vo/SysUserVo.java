package com.baisui.BedSystem.entity.vo;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class SysUserVo {

    private String id;
    // 用户名
    private String userName;

    // 姓名
    private String name;

    // 手机号
    private String mobileno;

    // 角色名称
    private String roleName;

    /**
     * 指向角色表id
     */
    private String roleIds;

    /**
     *  用户密码
     */
    private String passWord;

    /**
     * 角色类型
     */
    private String type;

}
