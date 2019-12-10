package com.baisui.BedSystem.controller;

import com.baisui.BedSystem.entity.dto.Chair_DepartmentDTO;
import com.baisui.BedSystem.service.ChairDepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/department")
public class DepartmentController {
	
	@Autowired
	ChairDepartmentService departmentService;
	
	/**
	 * 	用于修改数据时科室下拉框动态加载数据对象,查找科室
	 * @param h_id 医院id
	 * @return
	 */
	@RequestMapping("/selectDepartmentByHospitalId")
	@ResponseBody
	public List<Chair_DepartmentDTO> selectDepartmentByHospitalId(String h_id){
		List<Chair_DepartmentDTO> list =  departmentService.selectDepartmentByHospitalId(h_id);
		return list;
	}
}
