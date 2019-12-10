package com.baisui.BedSystem.entity.dto;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class BedOrderCountDTO {

	//省
	private String province;
	
	//市
	private String city;
	
	//县
	private String country;
	
	//医院
	private String hospitalName;
	
	//陪护椅编号
	private String bedCode;
	
	//科室
	private String departmentName;
	
	//订单号
	private String orderId;
	
	//用户手机号
	private String userPhone;
	
	//开始时间
	private String startTime;
	
	//结束时间
	private String endTime;
	
	//使用时长
	private long serviceTime;
	
	//使用费用
	private float cost;
	
	//支付状态（0.已完成 ,1.未支付,2.待审核,3使用中）
	private int payState;
	
	//总时长
	private long sumServiceTime;
	
	//总费用
	private float sumCost;
}
