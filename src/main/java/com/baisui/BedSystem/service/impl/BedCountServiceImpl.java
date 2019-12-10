package com.baisui.BedSystem.service.impl;

import com.baisui.BedSystem.entity.dto.*;
import com.baisui.BedSystem.mapper.BedCountMapper;
import com.baisui.BedSystem.service.BedCountService;
import com.baisui.BedSystem.utils.DataGridPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BedCountServiceImpl implements BedCountService {
	
	@Autowired
	private BedCountMapper bedCountMapper;

	@Override
	public DataGridPage queryCountsList(Map<String, String> params) {
		List<BedCountDTO> list = bedCountMapper.queryCountsList(params);
		DataGridPage page = new DataGridPage(list);
		return page;
	}

	@Override
	public DataGridPage queryOrderCountList(Map<String, String> params) {
		List<BedOrderCountDTO> list = bedCountMapper.queryOrderCountList(params);
		DataGridPage page = new DataGridPage(list);
		return page;
	}

	@Override
	public DataGridPage queryHospitalCountList(Map<String, String> params) {
		List<BedHospitalCountDTO> list = bedCountMapper.queryHospitalCountList(params);
		DataGridPage page = new DataGridPage(list);
		return page;
	}

	@Override
	public DataGridPage queryHospitalNatureList(Map<String, String> params) {
		List<BedHospitalCountDTO> list = bedCountMapper.queryHospitalNatureList(params);
		DataGridPage page = new DataGridPage(list);
		return page;
	}

	@Override
	public DataGridPage queryDepartmentCountList(Map<String, String> params) {
		List<BedDepartmentCountDTO> list = bedCountMapper.queryDepartmentCountList(params);
		DataGridPage page = new DataGridPage(list);
		return page;
	}

	@Override
	public DataGridPage querySaleHospitalList(Map<String, String> params) {
		List<SaleHospitalDTO> list = bedCountMapper.querySaleHospitalList(params);
		DataGridPage page = new DataGridPage(list);
		return page;
	}

	@Override
	public DataGridPage querysaleHospitalDetailList(Map<String, String> params) {
		List<SaleHospitalDetailDTO> list = bedCountMapper.querysaleHospitalDetailList(params);
		DataGridPage page = new DataGridPage(list);
		return page;
	}

	@Override
	public DataGridPage queryBedUserList(Map<String, String> params) {
		List<BedUserDTO> list = bedCountMapper.queryBedUserList(params);
		/*for (BedUserDTO bedUserDTO : list) {
			System.out.println("-----------------------------"+bedUserDTO.getBalance());
		}*/
		DataGridPage page = new DataGridPage(list);
		return page;
	}

	@Override
	public List<BedTimeCountDTO> queryDate(Map<String, String> params) {
		return bedCountMapper.queryDate(params);
	}

	@Override
	public List<BedMemberDateilsDTO> queryMemberDateils(String userId) {

		return bedCountMapper.queryMemberDateils(userId);
	}

}
