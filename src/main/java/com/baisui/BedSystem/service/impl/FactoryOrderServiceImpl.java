package com.baisui.BedSystem.service.impl;

import com.baisui.BedSystem.entity.FactoryOrder;
import com.baisui.BedSystem.entity.dto.Chair_FactoryOrder_DTO;
import com.baisui.BedSystem.mapper.FactoryMapper;
import com.baisui.BedSystem.mapper.FactoryOrderMapper;
import com.baisui.BedSystem.service.FactoryOrderService;
import com.baisui.BedSystem.utils.UUIDPK;
import com.baisui.BedSystem.utils.WebResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
@Service
public class FactoryOrderServiceImpl implements FactoryOrderService {
	
	@Autowired
	FactoryOrderMapper factoryOrderMapper;

	@Autowired
	FactoryMapper factoryMapper;
	
	/**
	 * 查找所有厂商订单
	 */
	@Override
	public List<Chair_FactoryOrder_DTO> findAllOrder(Map<String, String> map) {
		List<Chair_FactoryOrder_DTO> findOrderList =  factoryOrderMapper.findAllOrder(map);
		return findOrderList;
	}

	/**
	 * 删除所有厂商订单
	 * @param id
	 * @return
	 */
	@Override
	public WebResult deleteByPrimaryKey(String id) {
		int i = factoryOrderMapper.deleteByPrimaryKey(id);
		if (i == 0){
			return new WebResult("500","删除失败",null);
		}
		return new WebResult("200","删除成功",null);
	}

	/**
	 * 增加厂商订单
	 * @param factoryOrder
	 * @return
	 */
	@Override
	public WebResult insert(FactoryOrder factoryOrder) {


		factoryOrder.setId(UUIDPK.getUUID(this));
		factoryOrder.setCreateTime(new SimpleDateFormat("yyyy-MM-dd:mm:ss").format(new Date()));
		factoryOrder.setUpdateTime(new SimpleDateFormat("yyyy-MM-dd:mm:ss").format(new Date()));
		factoryOrderMapper.insert(factoryOrder);

		System.out.println("factoryOrder = " + factoryOrder);

		return new WebResult("200","保存成功",factoryOrder);
	}

	/**
	 * 根据id查询厂商订单
	 * @param id
	 * @return
	 */
	@Override
	public Chair_FactoryOrder_DTO selectByPrimaryKey(String id) {

		return factoryOrderMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Chair_FactoryOrder_DTO> findFactoryByid(String id) {

		return factoryOrderMapper.findFactoryByid(id);
	}

}
