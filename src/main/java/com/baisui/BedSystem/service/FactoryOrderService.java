package com.baisui.BedSystem.service;

import com.baisui.BedSystem.entity.FactoryOrder;
import com.baisui.BedSystem.entity.dto.Chair_FactoryOrder_DTO;
import com.baisui.BedSystem.utils.WebResult;

import java.util.List;
import java.util.Map;

public interface FactoryOrderService {
	
	/**
	 * 查找所有厂商订单
	 * @param map
	 * @return
	 */
	List<Chair_FactoryOrder_DTO> findAllOrder(Map<String, String> map);

	/**
	 * 删除厂商订单
	 * @param id
	 * @return
	 */
	WebResult deleteByPrimaryKey(String id);

	WebResult insert(FactoryOrder factoryOrder);

	Chair_FactoryOrder_DTO selectByPrimaryKey(String id);

	List<Chair_FactoryOrder_DTO> findFactoryByid(String id);
}
