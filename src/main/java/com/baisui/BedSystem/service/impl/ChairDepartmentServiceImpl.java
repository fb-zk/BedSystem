package com.baisui.BedSystem.service.impl;

import com.baisui.BedSystem.entity.ChairDepartment;
import com.baisui.BedSystem.entity.dto.Chair_DepartmentDTO;
import com.baisui.BedSystem.mapper.ChairDepartmentMapper;
import com.baisui.BedSystem.service.ChairDepartmentService;
import com.baisui.BedSystem.utils.UUIDPK;
import com.baisui.BedSystem.utils.WebResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * @author zheng_h
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2019.11.2614:13
 */
@Service
public class ChairDepartmentServiceImpl implements ChairDepartmentService {

    @Autowired
    private ChairDepartmentMapper departmentMapper;

    /**
     * 新增科室
     * @param chairDepartment
     * @return
     */
    @Override
    public WebResult insertDepartment(ChairDepartment chairDepartment) {
        if (StringUtils.isEmpty(chairDepartment.getHospitalId())){
            return new WebResult("405","参数错误，请先添加医院",null);
        }
        chairDepartment.setId(UUIDPK.getUUID(this));

        int result = departmentMapper.insertChairDepartment(chairDepartment);

       // System.out.println("-------------------i:"+result);
        System.out.println("-------------------chairDepartment:"+chairDepartment);
        if (result != 1){
            return new WebResult("404","新增失败,参数错误",null);
        }
        return new WebResult("200","新增成功",chairDepartment);
    }

    /**
     * 根据医院id查询科室
     * @param id
     * @return
     */
    @Override
    public WebResult deleteDepartment(String id) {
        int i = departmentMapper.delteChairDepartment(id);
        if ( i > 0 ){
            return new WebResult("200","删除成功",null);
        }
        return new WebResult("404","删除失败,参数错误",null);
    }

    /**
     * 删除科室
     * @param hospitalId
     * @return
     */
    @Override
    public List<ChairDepartment> selectByHospitalId(String hospitalId) {
        List<ChairDepartment> chairDepartments = departmentMapper.selectByHospitalId(hospitalId);
        for (ChairDepartment chairDepartment : chairDepartments) {
            System.out.println("--------------chairpartment:"+chairDepartment);
        }
        return chairDepartments;
    }


    @Override
    public List<Chair_DepartmentDTO> selectDepartmentByHospitalId(String h_id) {
        List<Chair_DepartmentDTO> list =  departmentMapper.selectDepartmentByHospitalId(h_id);
        return list;
    }
}
