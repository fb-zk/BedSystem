package com.baisui.BedSystem.mapper;

import com.baisui.BedSystem.entity.BaseHospital;
import com.baisui.BedSystem.entity.dto.Chair_Depart_HospitalDTO;
import com.baisui.BedSystem.entity.dto.Chair_HospitalDTO;

import java.util.List;
import java.util.Map;

public interface BaseHospitalMapper {

    /**
     *  查询id和名称 - 计费管理
     * @return
     */
    List<BaseHospital> findHospitalName();

    /**
     * 查询医院id和名称 - 陪护椅信息
     * @return
     */
    List<Chair_HospitalDTO> findHospitalByid();


    /**
     * 查询医院列表
     * @return
     */
    List<BaseHospital> selectHospitalList(Map<String, String> params);

    /**
     *  根据id删除
     * @mbg.generated 2019-11-25
     */
    int deleteByPrimaryKey(String id);

    /**
     *    插入数据
     * @mbg.generated 2019-11-25
     */
    int insert(BaseHospital record);

    /**
     *  有选择的插入数据
     * @mbg.generated 2019-11-25
     */
    int insertSelective(BaseHospital record);

    /**
     *根据id查询详情
     * @mbg.generated 2019-11-25
     */
    BaseHospital selectByPrimaryKey(String id);

    /**
     * 选择性更新
     * @mbg.generated 2019-11-25
     */
    int updateByPrimaryKeySelective(BaseHospital record);

    /**
     * 根据全部更新
     * @mbg.generated 2019-11-25
     */
    int updateByPrimaryKey(BaseHospital record);
    
    /**
     * 	根据医院名和科室名查询医院id和科室id
     * @param map 医院名称
     * @return
     */
	List<Chair_Depart_HospitalDTO> findByName(Map<String, String> map);
}
