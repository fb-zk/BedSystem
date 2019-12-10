package com.baisui.BedSystem.mapper;

import com.baisui.BedSystem.entity.ChairDepartment;
import com.baisui.BedSystem.entity.dto.Chair_DepartmentDTO;

import java.util.List;


public interface ChairDepartmentMapper {
    /**
     *新增科室
     * @mbggenerated 2019-10-13
     */
    int insertChairDepartment(ChairDepartment record);

    /**
     * 删除科室
     * @param id
     * @return
     */
    int delteChairDepartment(String id);

    /**
     * 根据医院id删除医院下所有科室
     * @param hospitalId
     * @return
     */
    int delDepartmentByHospitalId(String hospitalId);

    /**
     * 根据医院id查询科室信息
     * @param hospitalId
     * @return
     */
    List<ChairDepartment> selectByHospitalId(String hospitalId);

    /**
     *查询所有科室信息
     * @mbggenerated 2019-10-13
     */
    List<ChairDepartment> selectAll();

    /**
     * 修改科室
     * @param ChairDepartment
     * @return
     */
    int updateChairDepartment(ChairDepartment ChairDepartment);


    List<Chair_DepartmentDTO> selectDepartmentByHospitalId(String h_id);
    
    /**
     * 
     * @param str_Department
     * @return
     */
	String findByName(String str_Department);
}
