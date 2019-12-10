package com.baisui.BedSystem.service;

import com.baisui.BedSystem.entity.ChairInfo;
import com.baisui.BedSystem.entity.dto.Chair_BindDTO;
import com.baisui.BedSystem.entity.dto.Chair_EchoDTO;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.WebResult;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface ChairService {
	/**
	 * 查询所有的椅子
	 * @param map 
	 * @return
	 */
	public ArrayList<ChairInfo> selectAllChair(Map<String, String> map);
	
	/**
	 * 查询绑定的椅子
	 * @param map 
	 * @return
	 */
	public DataGridPage selectBindingChair(Map<String, String> map);
	
	/**
	 * 保存椅子信息
	 * @param chair
	 * @throws Exception 
	 */
	public void saveChair(ChairInfo chair) throws Exception;
	
	/**
	 * 根据id查找椅子
	 * @param id
	 * @return
	 */
	public Chair_EchoDTO findChairByid(String id);
	
	/**
	 * 	删除椅子
	 * @param id
	 */
	public void deleteChairByid(String id);
	
	/**
	 * 更新椅子信息
	 * @return
	 */
	public void updateChair(Chair_EchoDTO chair_EchoDTO);
	
	

}
