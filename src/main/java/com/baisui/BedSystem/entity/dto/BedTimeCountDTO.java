package com.baisui.BedSystem.entity.dto;

import lombok.Data;

@Data
public class BedTimeCountDTO {

	private int year;
	
	private int month;
	
	private int day;
	
	// 使用次数
	private int times;
	
	// 时长
	private long usedTime;
	
	// 费用
	private float usedCost;
}
