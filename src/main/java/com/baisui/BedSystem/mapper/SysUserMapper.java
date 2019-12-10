package com.baisui.BedSystem.mapper;

import com.baisui.BedSystem.entity.SysUser;
import com.baisui.BedSystem.entity.vo.SysUserVo;

import java.util.List;
import java.util.Map;

public interface SysUserMapper {
    /**
     * 分页查询
     * @return
     */
    List<SysUser> selectUserByPage();

    int insertInfo(SysUserVo sysUserVo);

    int deleteUserById(String id);

    int deleteByRoleIds(String roleIds);

    SysUser queryNameExist(String userName);

    SysUser selectUserByAccount(Map map);

//    List<SysUser> findByRoleIdList(String roleId);

    List<SysUser> findByRoleIdLists(String roleId);






    int insert(SysUser sysUser);

    int update(SysUser sysUser);

    SysUser selectByUserId(String userId);

    SysUser selectUserById(Map map);

    String selectRoleIds(String userName);

    String selectResourceIdsByUserName(String userName);


    List<String> selectRoleNameByUserId(String userName);

    void changePassword(Map map);

    SysUser selectByUserName(String username);


}
