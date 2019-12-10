package com.baisui.BedSystem.mapper;

import com.baisui.BedSystem.entity.SysRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface SysRoleMapper {

    /**
     * 删除角色信息
     * @param roleId
     * @return
     */
    int deleteById(String roleId);

    /**
     * 新增角色信息
     * @param sysRole
     * @return
     */
    int insert(SysRole sysRole);

    /**
     * 分页查询角色信息
     * @param params
     * @return
     */
    List<SysRole> selectRoleByPage(Map<String, String> params);

    SysRole queryRoleNameExist(String name);

    SysRole selectById(@Param("roleId") String roleId);

    int update(SysRole sysRole);












    List<SysRole> selectListById(String roleIds);

    List<SysRole> selectRoleList();

    List<SysRole> selectRoleByType(String type);

    List<String> selectRoleKeyWords(String roleIds);

    List<String> selectResourceIds(String roleIds);

    SysRole selectByPrimaryKey(String roleId);

    /**
     * @Description 根据中文角色 找ID
     * @date 2017年9月26日
     * @author 邓金
     * @param roleName
     * @return
     */
    SysRole getSysRoleByName(@Param("name") String roleName);

}
