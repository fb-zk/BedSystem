package com.baisui.BedSystem.entity.dto;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class BedCountDTO {

	private String bedCode;
	
	private String hospitalName;
	
	private String departmentName;
	
	//陪护椅添加时间
	private String addTime;
	
	//使用次数
	private int counts;
	
	//使用时间(秒)
	private long usedTime;
	
	//使用费用
	private float cost;
}
