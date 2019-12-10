package com.baisui.BedSystem.mapper;

import com.baisui.BedSystem.entity.ChairResourceAllocation;
import com.baisui.BedSystem.entity.dto.ChairResourceAllocationDTO;

import java.util.List;
import java.util.Map;

/**
 * @description: ${description}
 * @author: Chenye
 * @date: 2019/10/10:14:19
 */
public interface ChairResourceAllocationMapper {


   /**
    * 新增计费信息
    * @param chair
    * @return
    */
   int insert(ChairResourceAllocation chair);

   /**
    * 根据id删除医院计费信息
    * @param id
    * @return
    */
   int deleteByPrimaryKey(String id);

   /**
    * 分页显示医院管理 - 计费管理
    * @param params
    * @return
    */
   List<ChairResourceAllocationDTO> selectBedResourceByPage(Map<String, String> params);


   /**
    * 修改计费信息
    * @param chairResourceAllocation
    * @return
    */
     int update(ChairResourceAllocationDTO chairResourceAllocation);


   /**
    * 根据id查询
    * @param id
    * @return
    */
     ChairResourceAllocationDTO findById(String id);
}
