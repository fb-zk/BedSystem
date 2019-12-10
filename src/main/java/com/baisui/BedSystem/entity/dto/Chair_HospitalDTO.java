package com.baisui.BedSystem.entity.dto;

import java.io.Serializable;

import lombok.Data;

/**
 * 
 * @Description: 医院下拉框动态数据需要
 * @author Cheng_w
 * @date 2019年11月23日 下午4:53:12
 */
@Data
public class Chair_HospitalDTO implements Serializable{

	private static final long serialVersionUID = -8483321339529658218L;
	private String id;
	private String hospitalId;//医院名称
}
