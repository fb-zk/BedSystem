package com.baisui.BedSystem.entity.dto;

import java.io.Serializable;

import lombok.Data;

/**
 * 
 * @Description: 科室下拉框动态加载数据对象需要用到
 * @author Cheng_w
 * @date 2019年11月23日 下午7:19:58
 */
@Data
public class Chair_DepartmentDTO implements Serializable{

	private static final long serialVersionUID = 8052487531697663959L;
	//科室id
	private String id;
	//科室名称
	private String departmentId;//实质是科室名称
}
