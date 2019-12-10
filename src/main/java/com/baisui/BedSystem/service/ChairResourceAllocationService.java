package com.baisui.BedSystem.service;

import com.baisui.BedSystem.entity.ChairResourceAllocation;
import com.baisui.BedSystem.entity.dto.ChairResourceAllocationDTO;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.WebResult;

import java.util.Map;


public interface ChairResourceAllocationService {


	WebResult insert(ChairResourceAllocation chair);

	WebResult deleteByPrimaryKey(String id);

	DataGridPage selectBedResourceByPage(Map<String, String> params);

	WebResult update(ChairResourceAllocationDTO chairResourceAllocation);

	ChairResourceAllocationDTO findById(String id);
}

