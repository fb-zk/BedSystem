package com.baisui.BedSystem.service.impl;

import com.baisui.BedSystem.entity.Factory;
import com.baisui.BedSystem.entity.dto.Chair_FactoryDTO;
import com.baisui.BedSystem.mapper.FactoryMapper;
import com.baisui.BedSystem.service.FactoryService;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.UUIDPK;
import com.baisui.BedSystem.utils.WebResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class FactoryServiceImpl implements FactoryService {
	
	@Autowired
	FactoryMapper factoryMapper;
	
	/**
	 * 查询所有厂商
	 */
	@Override
	public DataGridPage selectAllFactory(Map<String, String> map) {
		List<Factory> factories = factoryMapper.selectAllFactory(map);
		DataGridPage dataGridPage = new DataGridPage(factories);
		return dataGridPage;
	}
	
	/**
	 * 	厂商下拉框加载数据
	 */
	@Override
	public List<Chair_FactoryDTO> findAllDTOFactory() {
		List<Chair_FactoryDTO> list = factoryMapper.findAllDTOFactory();
		return list;
	}
	
	/**
	 * 	查询厂商陪护椅价格
	 */
	@Override
	public BigDecimal findUnitPrices(String f_id) {
		BigDecimal unitPrice = factoryMapper.findUnitPrices(f_id);
		return unitPrice;
	}

	/**
	 * 修改或保存厂商信息
	 * @param factory
	 * @return
	 */
	@Override
	public WebResult updateOrInsert(Factory factory) {

		if (StringUtils.isEmpty(factory.getId())){
			factory.setId(UUIDPK.getUUID(this));
			factory.setCreateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			factory.setUpdateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			factoryMapper.insert(factory);
			return new  WebResult("200","厂商信息保存成功",factory);
		} else {
			factory.setUpdateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			int i = factoryMapper.updateById(factory);
			if (i < 0){
				return new WebResult("504","修改失败",null);
			}
			return new WebResult("200","修改成功",null);
		}
	}


	@Override
	public Factory selectById(String id) {

		return factoryMapper.selectById(id);
	}

	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@Override
	public WebResult deleteById(String id) {

		int i = factoryMapper.deleteById(id);
		if (i < 0){
			return new WebResult("504","删除失败",null);
		}
		return new WebResult("200","删除成功",null);
	}



}
