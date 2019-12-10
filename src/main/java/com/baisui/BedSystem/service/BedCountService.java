package com.baisui.BedSystem.service;

import com.baisui.BedSystem.entity.dto.BedMemberDateilsDTO;
import com.baisui.BedSystem.entity.dto.BedTimeCountDTO;
import com.baisui.BedSystem.utils.DataGridPage;

import java.util.List;
import java.util.Map;

public interface BedCountService {

	DataGridPage queryCountsList(Map<String, String> params);

	DataGridPage queryOrderCountList(Map<String, String> params);

	DataGridPage queryHospitalCountList(Map<String, String> params);

	DataGridPage queryHospitalNatureList(Map<String, String> params);

	DataGridPage queryDepartmentCountList(Map<String, String> params);

	DataGridPage querySaleHospitalList(Map<String, String> params);

	DataGridPage querysaleHospitalDetailList(Map<String, String> params);

	DataGridPage queryBedUserList(Map<String, String> params);

	List<BedTimeCountDTO> queryDate(Map<String, String> params);

	List<BedMemberDateilsDTO> queryMemberDateils(String userId);

}
