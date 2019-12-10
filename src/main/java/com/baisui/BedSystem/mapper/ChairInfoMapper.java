package com.baisui.BedSystem.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.baisui.BedSystem.entity.ChairInfo;
import com.baisui.BedSystem.entity.dto.Chair_BindDTO;
import com.baisui.BedSystem.entity.dto.Chair_EchoDTO;

public interface ChairInfoMapper {
    /**
     *
     * @mbg.generated 2019-11-19
     */
    int deleteByPrimaryKey(String id);

    /**
     *
     * @mbg.generated 2019-11-19
     */
    int insert(ChairInfo record);

    /**
     *
     * @mbg.generated 2019-11-19
     */
    int insertSelective(ChairInfo record);

    /**
     *
     * @mbg.generated 2019-11-19
     */
    ChairInfo selectByPrimaryKey(String id);

    /**
     *
     * @mbg.generated 2019-11-19
     */
    int updateByPrimaryKeySelective(ChairInfo record);

    /**
     *
     * @mbg.generated 2019-11-19
     */
    int updateByPrimaryKey(ChairInfo record);
    
    
    /*查询所有的陪护椅信息*/
    ArrayList<ChairInfo> selectAllChair(Map<String,String> map);
    
    /*查询已经绑定的陪护椅信息*/
    List<Chair_BindDTO> selectBindingChair(Map<String,String> map);
    
	/* 插入椅子 */
	void saveChair(ChairInfo chair);
	
	/* 修改椅子 */
	void updateChair(ChairInfo chair);

	/* 根据id查找 */
	Chair_EchoDTO selectChairToDetail(String id);
	
	/**
	 * 	删除椅子
	 * @param id
	 */
	void deleteChairByid(String id);
	
	
	
}