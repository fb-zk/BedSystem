package com.baisui.BedSystem.entity;

import java.io.Serializable;

/**
 * 角色表
 * */
//@Alias(value = "SysRole")
public class SysRole implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * 主键id
     */
    private String roleId;

    /**
     * 角色名称
     */
    private String name;

    /**
     * 关键字
     */
    private String keyWord;
    
    /**
     * 资源表id
     */
    private String resourceIds;
    
    /**
     * 前缀
     */
    private String prefix;
    
    /**
     * 1：后台角色；2：医院角色
     */
    private String type;
    
    
    
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public String getResourceIds() {
		return resourceIds;
	}

	public void setResourceIds(String resourceIds) {
		this.resourceIds = resourceIds;
	}

	public String getPrefix() {
		return prefix;
	}

	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}

  
}