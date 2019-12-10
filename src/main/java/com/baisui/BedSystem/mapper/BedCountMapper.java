package com.baisui.BedSystem.mapper;

import com.baisui.BedSystem.entity.dto.*;

import java.util.List;
import java.util.Map;

public interface BedCountMapper {

	List<BedCountDTO> queryCountsList(Map<String, String> params);

	List<BedOrderCountDTO> queryOrderCountList(Map<String, String> params);

	List<BedHospitalCountDTO> queryHospitalCountList(Map<String, String> params);

	List<BedHospitalCountDTO> queryHospitalNatureList(Map<String, String> params);

	List<BedDepartmentCountDTO> queryDepartmentCountList(Map<String, String> params);

	List<SaleHospitalDTO> querySaleHospitalList(Map<String, String> params);

	List<SaleHospitalDetailDTO> querysaleHospitalDetailList(Map<String, String> params);

	List<BedUserDTO> queryBedUserList(Map<String, String> params);

	List<BedTimeCountDTO> queryDate(Map<String, String> params);

	List<BedMemberDateilsDTO> queryMemberDateils(String userId);

}
