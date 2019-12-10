package com.baisui.BedSystem.entity;

import java.io.Serializable;

import lombok.Data;

/**
 *  
 * @Description: 科室表
 * @author Cheng_w
 * @date 2019年11月23日 下午12:23:28
 */
@Data
public class ChairDepartment implements Serializable{

	private static final long serialVersionUID = -854517865680250549L;
	//id
	private String id;
	//部门
	private String departmentName;
	//医院id
	private String hospitalId;
}
