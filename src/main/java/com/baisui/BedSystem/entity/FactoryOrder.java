package com.baisui.BedSystem.entity;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 厂商订单表 FACTORY_ORDER
 * @author Administrator
 *
 */
@Data
public class FactoryOrder implements Serializable{
	private static final long serialVersionUID = 5999916431080972914L;

	private String id;

    private String code;

    private BigDecimal unitPrices;

    private BigDecimal count;

    private BigDecimal totalPrices;

    private String createTime;

    private String updateTime;

    private String factoryId;

}