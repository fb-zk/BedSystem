package com.baisui.BedSystem.entity.dto;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class BedMemberDateilsDTO {

	private String userId;
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


	//关闭状态（0：异常关闭 1：正常关闭）
	private String endWay;

	//结算方式
	private String payWay;

}
