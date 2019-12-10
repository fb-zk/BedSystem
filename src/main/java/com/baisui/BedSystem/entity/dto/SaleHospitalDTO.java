package com.baisui.BedSystem.entity.dto;

import lombok.Data;

@Data
public class SaleHospitalDTO {

	// 销售人员姓名
	private String salerName;
	
	// 联系人电话
	private String contactPhone;
	
	// 签约医院数量
	private int amount;
}
