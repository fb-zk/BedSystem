package com.baisui.BedSystem.entity.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @Description  
 * @Author  Hunter
 * @Date 2019-11-25 
 */

@Data
public class ChairResourceAllocationDTO implements Serializable {

   
	private String id;

	/**
	 * 医院名称
	 */
	private String hospitalName;

	/**
	 * 用户缴纳押金的金额（单位为：分）
	 */
	private String cashPledgeMoney;

	/**
	 * 2元/20分钟
	 */
	private String costNormal;

	/**
	 * 医院id
	 */
	private String hospitalId;

	/**
	 * 免费时间
	 */
	private String freeTime;

	/**
	 * 费用分成
	 */
	private String costProportion;

	/**
	 * 封顶金额
	 */
	private String limitAmount;

	/**
	 * 设置套餐模式费用   n元/n小时
	 */
	private String rates;

	/**
	 * 计费方式（1:小时计费，2:套餐计费，3:次数计费）
	 */
	private String chargeModel;

	/**
	 * 次数计费标准  20元/次
	 */
	private String chargeNumber;

	/**
	 * 套餐模式时间  n元/n小时
	 */
	private String ratesTime;
}
