package com.baisui.BedSystem.service;

import com.baisui.BedSystem.entity.SysUser;
import com.baisui.BedSystem.entity.vo.SysUserVo;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.WebResult;

import java.util.List;
import java.util.Map;
import java.util.Set;

public interface SysUserService {

	/**
	 * 根据用户id查询
	 */
	public SysUser selectByUserId(String userId) throws Exception;

	/**
	 * 根据用户名，查询角色
	 */
	public Set<String> selectUserRoles(String userName);

	/**
	 * 根据用户名，查询角色、资源
	 */
	public Set<String> selectUserPermissions(String userName);



	/**
	 * 查询角色名称
	 */
	public Object selectRoleNameByUserId(String id) throws Exception;

	/**
	 * 新增或修改用户
	 */
	public SysUser insertOrUpdate(SysUser user) throws Exception;

	/**
	 * 根据用户id查询
	 */
	public SysUser selectUserById(Map<String, Object> map) throws Exception;

	public void changePassword(Map<String, String> map) throws Exception;

	public int selectByUserName(String username);



	WebResult deleteUserById(String id);

	DataGridPage selectUserByPage(Map<String, String> params);

	WebResult insertInfo(SysUserVo sysUserVo);

	WebResult queryNameExist(String userName);

//	List<SysUser> findByRoleIdList( String roleId);

	List<SysUser> findByRoleIdLists(String roleId);

	/**
	 * 根据用户名和密码查询用户
	 */
	public SysUser selectByAccount(String userName, String passWord);
}
