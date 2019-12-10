package com.baisui.BedSystem.service;

import com.baisui.BedSystem.entity.SysResource;

import java.util.List;
import java.util.Map;


public interface SysResourceService {
	
	/**
	 * 查询资源信息
	 * */
	List<Map> selectResourceTree() throws Exception;
	
	/**
	 * 新增或修改
	 * */
	SysResource insertOrUpdate(SysResource resource, String pCode);
	
	/**
	 * 根据id,查询资源
	 * */
	public SysResource selectById(String resourceId) throws Exception;
	
	/**
	 * 删除资源
	 * */
	public int deleteByCode(String code) throws Exception;

}
