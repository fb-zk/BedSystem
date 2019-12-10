package com.baisui.BedSystem.entity;

import java.io.Serializable;

/**
 * 后台用户表
 * */
//@Alias(value="HospitalUser")
public class HospitalUser implements Serializable{
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
     * 角色名称
     */
    private String roleName;
   
    /**
     * 医院id
     */
    private String hospitalId;
    
    /**
     * 医院名称
     */
    private String hospitalName;
    
    /**
     * 科室id
     */
    private String departmentId;
    
    /**
     * 科室名称
     */
    private String subjectName;

    private String num;

    private Integer isRemind = new Integer(0);

    private String sendTime;

    private Integer isSend = new Integer(0);
    
    
    public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getHospitalName() {
		return hospitalName;
	}

	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getHospitalId() {
		return hospitalId;
	}

	public void setHospitalId(String hospitalId) {
		this.hospitalId = hospitalId;
	}

	/**
     * 主键
     * @return ID 主键
     */
    public String getId() {
        return id;
    }

    /**
     * 主键
     * @param id 主键
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 用户名
     * @return USERNAME 用户名
     */
    public String getUsername() {
        return username;
    }

    /**
     * 用户名
     * @param username 用户名
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 密码
     * @return PASSWORD 密码
     */
    public String getPassword() {
        return password;
    }

    /**
     * 密码
     * @param password 密码
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * 姓名
     * @return NAME 姓名
     */
    public String getName() {
        return name;
    }

    /**
     * 姓名
     * @param name 姓名
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 手机号
     * @return MOBILENO 手机号
     */
    public String getMobileno() {
        return mobileno;
    }

    /**
     * 手机号
     * @param mobileno 手机号
     */
    public void setMobileno(String mobileno) {
        this.mobileno = mobileno;
    }

    /**
     * 指向角色表id
     * @return ROLE_IDS 指向角色表id
     */
    public String getRoleIds() {
        return roleIds;
    }

    /**
     * 指向角色表id
     * @param roleIds 指向角色表id
     */
    public void setRoleIds(String roleIds) {
        this.roleIds = roleIds;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public Integer getIsRemind() {
        return isRemind;
    }

    public void setIsRemind(Integer isRemind) {
        this.isRemind = isRemind;
    }

    public String getSendTime() {
        return sendTime;
    }

    public void setSendTime(String sendTime) {
        this.sendTime = sendTime;
    }

    public Integer getIsSend() {
        return isSend;
    }

    public void setIsSend(Integer isSend) {
        this.isSend = isSend;
    }
}