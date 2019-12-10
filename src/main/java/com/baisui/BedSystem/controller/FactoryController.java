package com.baisui.BedSystem.controller;

import com.baisui.BedSystem.entity.Factory;
import com.baisui.BedSystem.entity.dto.Chair_FactoryDTO;
import com.baisui.BedSystem.service.FactoryService;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.WebResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/factory")
public class FactoryController {

	@Autowired
	FactoryService factoryService;
	
	/**
	 * 厂商查询
	 * @param map
	 * @return
	 */
	@RequestMapping("/selectAllFactory")
	@ResponseBody
	public DataGridPage selectAllFactory(@RequestParam Map<String, String> map) {

		return factoryService.selectAllFactory(map);
	}
	
	/**
	 * 	厂商下拉框加载数据
	 * @return
	 */
	@RequestMapping("/findAllDTOFactory")
	@ResponseBody
	public List<Chair_FactoryDTO> findAllDTOFactory(){
		List<Chair_FactoryDTO> list = factoryService.findAllDTOFactory();
		return list;
	}
	
	
	/**
	 * 	查询厂商中陪护椅的单价
	 * @param f_id
	 * @return
	 */
	@RequestMapping("/findUnitPrices")
	@ResponseBody
	public BigDecimal findUnitPrices(@RequestParam String f_id) {
		BigDecimal unitPrice = factoryService.findUnitPrices(f_id);
		return unitPrice;
		
	}

	@RequestMapping("/findfactoryByid")
	@ResponseBody
	public Factory findfactoryByid(String id){

		return factoryService.selectById(id);
	}

	@RequestMapping("/del")
	@ResponseBody
	public WebResult deleteById(String id){

		return factoryService.deleteById(id);
	}

	@RequestMapping("/updateOrInsert")
	@ResponseBody
	public WebResult updateOrInsert(Factory factory){

		return factoryService.updateOrInsert(factory);
	}
}
