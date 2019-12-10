package com.baisui.BedSystem.entity;

import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * 后台用户表
 * */
@Data
@Accessors(chain = true)

public class SysUser implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
     * 主键
     */
    private String id;

    /**
     * 用户名
     */
    private String username;

    /**
     * 密码
     */
    private String password;

    /**
     * 姓名
     */
    private String name;

    /**
     * 手机号
     */
    private String mobileno;

    /**
     * 指向角色表id
     */
    private String roleIds;

    
    /**
     * 指向资源表id
     */
    private String resourceIds;

    /**
     * null
     */
    private String code;

    /**
     *  用户密码
     */

    private String passWord;

    /**
     * 角色类型
     */
    private String type;

}