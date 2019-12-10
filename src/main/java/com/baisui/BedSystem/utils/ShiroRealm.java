package com.baisui.BedSystem.utils;

import com.baisui.BedSystem.constants.ControllerConstant;
import com.baisui.BedSystem.entity.SysUser;
import com.baisui.BedSystem.service.SysUserService;
import com.baisui.BedSystem.utils.ehcache.BaseCacheAspect;


import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;



//@Component
public class ShiroRealm extends AuthorizingRealm {

	@Autowired
	private SysUserService sysUserImpl;

	@Autowired
	private BaseCacheAspect baseCacheAspect;
	
	/**
	 * 权限验证
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		System.out.println("权限验证");
		
		String userName = (String) principals.getPrimaryPrincipal();
		
		SimpleAuthorizationInfo authorizationInfo = null;
		
//		authorizationInfo = ShiroPrincipalsCache.get(userName);
		authorizationInfo = baseCacheAspect.get(ShiroPrincipalsCache.getKey(userName));
		
		if(null == authorizationInfo) {
			authorizationInfo = new SimpleAuthorizationInfo();
			
			authorizationInfo.setRoles(sysUserImpl.selectUserRoles(userName));
			authorizationInfo.setStringPermissions(sysUserImpl.selectUserPermissions(userName));
			
//			ShiroPrincipalsCache.put(userName, authorizationInfo);
			baseCacheAspect.put(ShiroPrincipalsCache.getKey(userName), authorizationInfo);
		}
		
		return authorizationInfo;
	}
	
	/**
	 * 登录验证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {

		System.out.println("登陆验证");
		
		UsernamePasswordToken token = (UsernamePasswordToken)authcToken;
		
		String userName = null;
		String passWord = null;
		
		userName = (String)token.getPrincipal();
		passWord = new String((char[])token.getCredentials());
		
		SysUser user = sysUserImpl.selectByAccount(userName, passWord);
		
		if(null != user) {
			SecurityUtils.getSubject().getSession().setAttribute(ControllerConstant.USER_SESSION, user);
			return new SimpleAuthenticationInfo(user.getUsername(), user.getPassword(), getName());
		}
		
		return null;
	}

	public void setSysUserImpl(SysUserService sysUserImpl) {
		this.sysUserImpl = sysUserImpl;
	}

	public void setShiroCacheWrapper(BaseCacheAspect shiroCacheWrapper) {
		this.baseCacheAspect = shiroCacheWrapper;
	}

}


