package com.baisui.BedSystem.entity.dto;

import java.io.Serializable;
import java.math.BigDecimal;

import lombok.Data;

/**
 * 
 * @Description: 厂商订单表进行扩展，增加了  //厂商名称项
 * @author Cheng_w
 * @date 2019年11月21日 上午11:35:17
 */

@Data
public class Chair_FactoryOrder_DTO implements Serializable{

	private static final long serialVersionUID = -5137246481307908549L;
	
	//订单uuid
	private String id;
	//订单code
    private String code;
    //厂商名称
    private String name;
    //商品（陪护椅）单价
    private BigDecimal unitPrices;
    //商品（陪护椅）数量
    private BigDecimal count;
    //商品（陪护椅）总价
    private BigDecimal totalPrices;
    //订单创建时间
    private String createTime;
    //订单修改时间
    private String updateTime;
    //详情
    private String details;
}
