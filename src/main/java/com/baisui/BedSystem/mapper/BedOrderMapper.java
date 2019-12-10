package com.baisui.BedSystem.mapper;

import java.util.List;
import java.util.Map;

import com.baisui.BedSystem.entity.BedOrder;
import com.baisui.BedSystem.entity.dto.BedOrderCountDTO;

public interface BedOrderMapper {

	BedOrder selectById(String orderId);
	
	int updateById(BedOrder bedOrder);

	List<BedOrderCountDTO> findByUserIdList(Map<String, String> params);
}
