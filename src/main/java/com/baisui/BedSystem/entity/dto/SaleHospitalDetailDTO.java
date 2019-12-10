package com.baisui.BedSystem.entity.dto;

import lombok.Data;

@Data
public class SaleHospitalDetailDTO {

	//省
	private String province;
	
	//市
	private String city;
	
	//县
	private String country;
	
	private String hopitalName;
	
	private String level;
	
	private String nature;
	
	private String contact;
	
	private String contactPhone;
	
	private String salerName;
	
	// 签约时间
	private String signingDate;
	
	// 服务到期时间
	private String expireDate;
	
	private int serviceDate;
	
	private int times;
	
	private long usedTime;
	
	private float usedCost;
}
