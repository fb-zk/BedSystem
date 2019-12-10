package com.baisui.BedSystem.mapper;

import com.baisui.BedSystem.entity.FactoryOrder;
import com.baisui.BedSystem.entity.dto.Chair_FactoryOrder_DTO;

import java.util.List;
import java.util.Map;

public interface FactoryOrderMapper {
    int insert(FactoryOrder record);

    int insertSelective(FactoryOrder record);

    int updateByPrimaryKeySelective(FactoryOrder record);

    int updateByPrimaryKey(FactoryOrder record);


    Chair_FactoryOrder_DTO selectByPrimaryKey(String id);

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
    int deleteByPrimaryKey(String id);

//    int insertFactoryOrder(FactoryOrderDTO factoryOrderDTO);

    List<Chair_FactoryOrder_DTO> findFactoryByid(String id);
}