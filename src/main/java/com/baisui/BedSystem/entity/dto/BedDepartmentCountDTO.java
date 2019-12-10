package com.baisui.BedSystem.entity.dto;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors
public class BedDepartmentCountDTO {
	
	private String hospitalName;

	private String departmentName;

	private int hospitalLevel;
	
	private int amount;
	
	private int times;
	
	private long usedTime;
	
	private float usedCost;
}
