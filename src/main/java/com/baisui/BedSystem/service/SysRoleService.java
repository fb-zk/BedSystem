package com.baisui.BedSystem.service;

import com.baisui.BedSystem.entity.SysRole;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.WebResult;

import java.util.List;
import java.util.Map;

public interface SysRoleService {

	/**
	 * 查询角色列表
	 * @param params
	 * @return
	 */
	DataGridPage selectRoleByPage(Map<String, String> params);

	/**
	 * 删除角色列表
	 * @param roleId
	 * @return
	 */
	WebResult deleteRoleByRoleId(String roleId);

	/**
	 * 新增角色信息
	 * @param sysRole
	 * @return
	 */
	WebResult inserRoleInfo(SysRole sysRole);

	/**
	 * 查询角色信息
	 * */
	List<SysRole> selectRoleList();

	WebResult queryRoleNameExist(String name);

    /**
	 * 根据id,查询角色信息
	 * */
	SysRole selectById(String roleIds);

	WebResult updateById(SysRole sysRole);






	/**
	 * 根据id,查询多个角色信息
	 * */
	List<SysRole> selectListById(String roleId) throws Exception;
	
	/**
	 * 查询角色信息
	 * */
	List<SysRole> selectRoleByType(String type) throws Exception;
	
	/**
	 * 新增或修改
	 * */
//	SysRole insertOrUpdate(SysRole role) throws Exception;

	int deleteById(String roleId);

	SysRole getSysRoleById(String id);

	/**
	 * @Description
	 * @date 2017年9月26日
	 * @author 邓金
	 * @param roleName
	 */
	SysRole getSysRoleByName(String roleName);
}
