package com.baisui.BedSystem.service.impl;

import com.baisui.BedSystem.constants.ControllerConstant;
import com.baisui.BedSystem.constants.SaltConstant;
import com.baisui.BedSystem.entity.SysRole;
import com.baisui.BedSystem.entity.SysUser;
import com.baisui.BedSystem.entity.vo.SysUserVo;
import com.baisui.BedSystem.mapper.SysResourceMapper;
import com.baisui.BedSystem.mapper.SysRoleMapper;
import com.baisui.BedSystem.mapper.SysUserMapper;
import com.baisui.BedSystem.service.SysUserService;
import com.baisui.BedSystem.utils.*;
import com.baisui.BedSystem.utils.ehcache.BaseCacheAspect;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.*;

@Service
public class SysUserImpl implements SysUserService {

	private static final Logger logger = LoggerFactory.getLogger(SysUserImpl.class);

	@Resource
	private SqlSessionTemplate sqlSessionTemplate;

	@Autowired
	private SysUserMapper sysUserMapper;

    @Autowired
    private SysRoleMapper sysRoleMapper;

    @Autowired
    private SysResourceMapper sysResourceMapper;


	@Autowired
	private BaseCacheAspect baseCacheAspect;

	@Override
	public SysUser selectByUserId(String userId) throws Exception {
		logger.info("调用SysUserImpl中selectByUserId方法,根据用户id查询用户");
		//  原生
		return sysUserMapper.selectByUserId(userId);
//		return sqlSessionTemplate.selectOne("com.app.manager.entity.SysUser.selectByUserId", userId);
	}

	@Override
	public Set<String> selectUserRoles(String userName) {
		if (StrUtils.isEmpty(userName)) {
			return null;
		}

		// 获取用户角色组信息
		// 原生
//		String roleIds = sqlSessionTemplate.selectOne("com.app.manager.entity.SysUser.selectRoleIds", userName);
		String roleIds = sysUserMapper.selectRoleIds(userName);
		if (StrUtils.isEmpty(roleIds)) {
			return null;
		}
		// 获取用户角色关键字信息
        //  原生
//		List<String> roleIds_List = sqlSessionTemplate.selectList("com.app.manager.entity.SysRole.selectRoleKeyWords",
//				StrUtils.stringToColumn(roleIds));
        List<String> roleIds_List = sysRoleMapper.selectRoleKeyWords(StrUtils.stringToColumn(roleIds));
		return new HashSet<String>(roleIds_List);
	}

	@Override
	public Set<String> selectUserPermissions(String userName) {
		if (StrUtils.isEmpty(userName)) {
			return null;
		}

		// 获取用户角色组信息
        //  原生
//		String roleIds = sqlSessionTemplate.selectOne("com.app.manager.entity.SysUser.selectRoleIds", userName);
        String roleIds = sysUserMapper.selectRoleIds(userName);
		// 连接角色组资源Id信息
		StringBuffer resource_Ids = new StringBuffer();

		if (StrUtils.isNotEmpty(roleIds)) {
			// 获取角色组资源组信息
            //  原生
//			List<String> resourceIds_List = sqlSessionTemplate
//					.selectList("com.app.manager.entity.SysRole.selectResourceIds", StrUtils.stringToColumn(roleIds));
            List<String> resourceIds_List = sysRoleMapper.selectResourceIds(StrUtils.stringToColumn(roleIds));
			for (String ids : resourceIds_List) {
				if (StrUtils.isEmpty(resource_Ids)) {
					resource_Ids.append(StrUtils.stringToColumn(ids));
				} else {
					resource_Ids.append(",").append(StrUtils.stringToColumn(ids));
				}

			}
		}

		// 直接获取用户的资源ID信息
        //  原生
//		String userResourceIds = sqlSessionTemplate
//				.selectOne("com.app.manager.entity.SysUser.selectResourceIdsByUserName", userName);
        String userResourceIds = sysUserMapper.selectResourceIdsByUserName(userName);
		if (StrUtils.isNotEmpty(userResourceIds)) {
			if (StrUtils.isEmpty(resource_Ids)) {
				resource_Ids.append(StrUtils.stringToColumn(userResourceIds));
			} else {
				resource_Ids.append(",").append(StrUtils.stringToColumn(userResourceIds));
			}
		}

		// 获取资源关键字信息
        //  原生
//		List<String> keyWords = sqlSessionTemplate
//				.selectList("com.app.manager.entity.SysResource.selectResourceKeyWords", resource_Ids.toString());
        List<String> keyWords = sysResourceMapper.selectResourceKeyWords(resource_Ids.toString());
		return new HashSet<String>(keyWords);
	}



	@Override
	public Object selectRoleNameByUserId(String id) throws Exception {

		logger.info("调用SysUserImpl中selectRoleNameByUserId方法,根据用户id,查询角色信息");
		//  原生
//		List<String> list = sqlSessionTemplate.selectList("com.app.manager.entity.SysUser.selectRoleNameByUserId", id);
        List<String> list = sysUserMapper.selectRoleNameByUserId(id);
		if (null == list || list.size() == 0) {
			return "";
		}
		String roleNames = "";
		for (String name : list) {
			roleNames = roleNames + " " + name;
		}
		return roleNames.trim();
	}

	@Override
	public SysUser insertOrUpdate(SysUser user) throws Exception {
		try {
			user.setPassword(MD5.encode(
					new StringBuffer(SaltConstant.PW_SALT).append(ControllerConstant.DEFAULT_PASSWORD).toString()));
			if (StrUtils.isEmpty(user.getId())) {
				logger.info("调用SysUserImpl中insertOrUpdate方法,新增用户");
				user.setId(UUIDPK.getUUID(this));
				//  原生
//				sqlSessionTemplate.insert("com.app.manager.entity.SysUser.insert", user);
                sysUserMapper.insert(user);
			} else {
				logger.info("调用SysUserImpl中insertOrUpdate方法,修改用户");
                //  原生
//				sqlSessionTemplate.update("com.app.manager.entity.SysUser.update", user);
                sysUserMapper.update(user);
			}

			// ShiroPrincipalsCache.remove(user.getUserName());
			baseCacheAspect.evict(ShiroPrincipalsCache.getKey(user.getUsername()));
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return user;
	}

	@Override
	public SysUser selectUserById(Map<String, Object> map) throws Exception {
		logger.info("调用SysUserImpl中selectUserById方法,查询用户");
		//  原生
//		return sqlSessionTemplate.selectOne("com.app.manager.entity.SysUser.selectUserById", map);
        return sysUserMapper.selectUserById(map);
	}

	@Override
	public void changePassword(Map<String, String> map) throws Exception {
		logger.info("调用SysUserImpl中changePassword方法,修改用户密码");
		//  原生
//		sqlSessionTemplate.update("com.app.manager.entity.SysUser.changePassword", map);
        sysUserMapper.changePassword(map);
	}

	@Override
	public int selectByUserName(String username) {
		logger.info("调用SysUserImpl中selectByUserName方法,查询用户名是否存在");
//		SysUser sysUser = sqlSessionTemplate.selectOne("com.app.manager.entity.SysUser.selectByUserName", username);
        SysUser sysUser = sysUserMapper.selectByUserName(username);
        if (null == sysUser) {
			return 0;
		}
		return 1;
	}

	@Override
	public DataGridPage selectUserByPage(Map<String, String> params) {
		List<SysUser> sysUsers = sysUserMapper.selectUserByPage();
		DataGridPage dataGridPage = new DataGridPage(sysUsers);
		return dataGridPage;
	}

	/**
	 *  添加角色用户
	 * @param sysUserVo
	 * @return
	 */
	@Override
	@Transactional
	public WebResult insertInfo(SysUserVo sysUserVo) {

		/**
		 * 数据校验
		 */
		if (StringUtils.isEmpty(sysUserVo)){
		 	return new WebResult("204","未提交数据",null);
		}
		if (StringUtils.isEmpty(sysUserVo.getName())){
			return new WebResult("504","保存用户信息失败，用户姓名不能为空",null);
		}
		if (StringUtils.isEmpty(sysUserVo.getUserName())){
			return new WebResult("504","保存用户信息失败，用户账号不能为空",null);
		}
		if (StringUtils.isEmpty(sysUserVo.getRoleName())){
			return new WebResult("504","保存用户信息失败，角色名不能为空",null);
		}

		SysRole sysRole = new SysRole();

		SysRole sr = sysRoleMapper.selectById(sysUserVo.getRoleName());

		SysUser sysUser = new SysUser();
		sysUser.setId(UUIDPK.getUUID(this));
		sysUser.setName(sysUserVo.getName());
		sysUser.setMobileno(sysUserVo.getMobileno());
		sysUser.setPassword(MD5.encode(sysUserVo.getPassWord()));
		sysUser.setUsername(sysUserVo.getUserName());
		// sysUserVo.getRoleName() :前台取到的是 sys_admin_role 里面的 roleId
		sysUser.setRoleIds(sysUserVo.getRoleName());
		int insert = sysUserMapper.insert(sysUser);

		return new WebResult("200","保存角色信息成功",sysRole);
	}

	/**
	 * 判断用户名是否存在
	 * @param userName
	 * @return
	 */
	@Override
	public WebResult queryNameExist(String userName) {

		SysUser sysUser = sysUserMapper.queryNameExist(userName);
		if (sysUser != null){
			return new WebResult("504","用户名已存在",sysUser);
		}
		return new WebResult("200","用户名可用",sysUser);
	}

//	/**
//	 * 根据 roleId 查询角色信息
//	 * @param
//	 * @return
//	 */
//	@Override
//	public List<SysUser> findByRoleIdList(String roleId) {
//
//		return sysUserMapper.findByRoleIdList(roleId);
//
//	}

	@Override
	public List<SysUser> findByRoleIdLists(String roleId) {

		return sysUserMapper.findByRoleIdLists(roleId);

	}

	/**
	 * 删除角色信息
	 * @param id
	 * @return
	 */
	@Override
	public WebResult deleteUserById(String id){

		int i = sysUserMapper.deleteUserById(id);
		if (i == 0){
			return new WebResult("500","删除失败",null);
		}
		return new WebResult("200","删除成功",null);
	}

	@Override
	public SysUser selectByAccount(String userName, String passWord) {

		Map<String, String> params = null;
		params = new HashMap<String, String>();
		params.put("username", userName);
		params.put("password", passWord);

		logger.info("调用SysUserImpl中selectByAccount方法,根据用户和密码,查询用户");
		//  原生
//		return sqlSessionTemplate.selectOne("com.app.manager.entity.SysUser.selectUserByAccount", params);
		return sysUserMapper.selectUserByAccount(params);
	}
}
