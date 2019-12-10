package com.baisui.BedSystem.service;

import com.baisui.BedSystem.entity.BaseHospital;
import com.baisui.BedSystem.entity.dto.Chair_HospitalDTO;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.WebResult;

import java.util.List;
import java.util.Map;

public interface BaseHospitalService  {

    /**
     * 查询医院的id和名字 - 计费管理
     * @return
     */
    List<BaseHospital> findHospitalName();

    /**
     * 查询医院的id和名字 - 陪护椅信息
     * @return
     */
    List<Chair_HospitalDTO> findHospitalByid();


    DataGridPage selectAll(Map<String, String> params);

    WebResult insert(BaseHospital baseHospital);

    WebResult update(BaseHospital baseHospital);

    WebResult delete(String id);

    BaseHospital findById(String id);
}
