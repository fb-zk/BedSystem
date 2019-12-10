package com.baisui.BedSystem.service;

import com.baisui.BedSystem.entity.ChairDepartment;
import com.baisui.BedSystem.entity.dto.Chair_DepartmentDTO;
import com.baisui.BedSystem.utils.WebResult;

import java.util.List;

/**
 * @author zheng_h
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2019.11.2614:08
 */
public interface ChairDepartmentService {
    /**
     * 新增科室
     * @param chairDepartment
     * @return
     */
    WebResult insertDepartment(ChairDepartment chairDepartment);

    /**
     * 删除科室
     * @param id
     * @return
     */
    WebResult deleteDepartment(String id);

    /**
     * 查询医院下所有科室
     * @param hospitalId
     * @return
     */
    List<ChairDepartment> selectByHospitalId(String hospitalId);


    /**
     * 	用于修改数据时科室下拉框动态加载数据对象
     * @param h_id 医院id
     * @return
     */
    List<Chair_DepartmentDTO> selectDepartmentByHospitalId(String h_id);

}
