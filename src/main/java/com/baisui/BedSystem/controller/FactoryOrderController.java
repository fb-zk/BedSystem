package com.baisui.BedSystem.controller;

import com.baisui.BedSystem.entity.FactoryOrder;
import com.baisui.BedSystem.entity.dto.Chair_FactoryOrder_DTO;
import com.baisui.BedSystem.service.FactoryOrderService;
import com.baisui.BedSystem.utils.WebResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/factoryOrder")
public class FactoryOrderController {
	
	@Autowired
	FactoryOrderService factoryOrderService;
	
	/**
	 * 查询所有厂商订单
	 * @param map
	 * @return
	 */
	@RequestMapping("/findAllOrder")
	@ResponseBody
	public List<Chair_FactoryOrder_DTO> findAllOrder(@RequestParam Map<String, String> map){
		List<Chair_FactoryOrder_DTO>  factoryOrderList =null;
		try {
			factoryOrderList=  factoryOrderService.findAllOrder(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return factoryOrderList;
	}

	/**
	 * 删除厂商订单
	 * @param id
	 * @return
	 */
	@RequestMapping("/deleteByPrimaryKey")
	@ResponseBody
	public WebResult deleteByPrimaryKey(String id){

		return factoryOrderService.deleteByPrimaryKey(id);
	}

	/**
	 * 增加厂商订单
	 * @param factoryOrder
	 * @return
	 */
	@RequestMapping("/insert")
	@ResponseBody
	public WebResult insert(FactoryOrder factoryOrder){

		return factoryOrderService.insert(factoryOrder);
	}

	@RequestMapping("/findfactoryOrderByid")
	@ResponseBody
	public Chair_FactoryOrder_DTO findfactoryOrderByid(String id){

		return factoryOrderService.selectByPrimaryKey(id);
	}

	@RequestMapping("/findFactoryByid")
	@ResponseBody
	public ModelAndView findFactoryByid(String id){

		List<Chair_FactoryOrder_DTO> factoryByid = factoryOrderService.findFactoryByid(id);

		ModelAndView mdv = new ModelAndView();
		mdv.setViewName("showFactoryOrder");
		mdv.addObject("factory", factoryByid);
		return mdv;

	}



}
