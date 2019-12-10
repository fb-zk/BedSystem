package com.baisui.BedSystem.entity;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 厂商表
 * @author Administrator
 *
 */
@Data
public class Factory implements Serializable{

	private static final long serialVersionUID = 5682915341502524808L;

	/**
     * null
     */
    private String id;

    /**
     * null
     */
    private String code;

    /**
     * null
     */
    private String name;

    /**
     * null
     */
    private String phone;

    /**
     * null
     */
    private String person;

    /**
     * null
     */
    private String address;

    /**
     * null
     */
    private String servieeDetails;

    /**
     * null
     */
    private String createTime;

    /**
     * null
     */
    private String updateTime;

    /**
     * null
     */
    private BigDecimal unitPrices;

}