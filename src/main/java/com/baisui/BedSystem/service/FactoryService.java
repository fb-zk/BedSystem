package com.baisui.BedSystem.service;

import com.baisui.BedSystem.entity.Factory;
import com.baisui.BedSystem.entity.dto.Chair_FactoryDTO;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.WebResult;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

public interface FactoryService {
	/**
	 * 查询所有的厂商
	 * @param map
	 * @return
	 */
	DataGridPage selectAllFactory(Map<String, String> map);
	
	/**
	 * 	厂商下拉框加载数据
	 * @return
	 */
	List<Chair_FactoryDTO> findAllDTOFactory();
	
	/**
	 * 	查询厂商陪护椅价格
	 * @param f_id
	 * @return
	 */
	BigDecimal findUnitPrices(String f_id);

//	WebResult insert(Factory factory);

	Factory selectById(String id);

	WebResult deleteById(String id);

//	WebResult updateById(String id);

	WebResult updateOrInsert(Factory factory);

}
