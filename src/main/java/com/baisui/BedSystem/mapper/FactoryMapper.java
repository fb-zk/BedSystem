package com.baisui.BedSystem.mapper;

import com.baisui.BedSystem.entity.Factory;
import com.baisui.BedSystem.entity.dto.Chair_FactoryDTO;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

public interface FactoryMapper {
    /**
     *
     * 新增厂商信息
     */
    int insert(Factory factory);

    /**
     *
     * @mbg.generated 2019-11-20
     */
    int insertSelective(Factory record);
    
    /**
     * 	查询所有厂商
     * @param map
     * @return
     */
	List<Factory> selectAllFactory(Map<String, String> map);
	
	/**
     *	 根据厂商名字查询厂商id
	 * @param name
	 * @return
	 */
	String selectFactoryByName(String str_FactoryName);
	
	/**
	 * 	厂商下拉框动态加载数据用
	 * @return
	 */
	List<Chair_FactoryDTO> findAllDTOFactory();
	
	/**
	 * 	查询厂商陪护椅价格
	 * @param f_id
	 * @return
	 */
	BigDecimal findUnitPrices(String f_id);

	Factory selectById(String id);

	int deleteById(String id);

	int updateById(Factory factory);
	
}