package com.baisui.BedSystem.entity.dto;

import java.io.Serializable;

import lombok.Data;

/**
 * 
 * @Description: 厂商下拉框需要
 * @author Cheng_w
 * @date 2019年11月24日 上午10:17:00
 */
@Data
public class Chair_FactoryDTO implements Serializable{

	private static final long serialVersionUID = -7945860038720059537L;
	private String id;
	private String factoryId;//实质是name
}
