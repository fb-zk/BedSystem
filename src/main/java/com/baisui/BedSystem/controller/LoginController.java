package com.baisui.BedSystem.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.baisui.BedSystem.constants.ControllerConstant;
import com.baisui.BedSystem.entity.SysRole;
import com.baisui.BedSystem.entity.SysUser;
import com.baisui.BedSystem.service.SysRoleService;
import com.baisui.BedSystem.service.SysUserService;
import com.baisui.BedSystem.utils.EncryptUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
@Slf4j
public class LoginController {
	
	@Autowired
	private SysUserService sysUserService;
	
	@Autowired
	private SysRoleService sysRoleService;
	
	
	@RequestMapping(value = "/login")
	public Object login(SysUser user, String process, HttpServletRequest request,
						HttpServletResponse response) throws Exception{

		System.out.println("进入login:");
		
		Subject subject = SecurityUtils.getSubject();
		String userLogin = user.getUsername().trim();
		UsernamePasswordToken token = new UsernamePasswordToken(userLogin, EncryptUtils.pwdEncode(user.getPassword()));

		try {
			subject.login(token);
		} catch (Exception e) {
			e.printStackTrace();

		return "redirect:/login.jsp?error=1";
		}
		
		SysUser sysUser=sysUserService.selectByAccount(userLogin, EncryptUtils.pwdEncode(user.getPassword()));
//		System.out.println("");
		log.info("sysUser={}",sysUser);
		String remUserName = request.getParameter("remUserN");
		String remPwd = request.getParameter("remPwd");
		if(remUserName!=null && remPwd!=null){
			Cookie cookie = new Cookie("remember", user.getUsername()+"-"+user.getPassword());
			cookie.setMaxAge(60*60*24*30);
			response.addCookie(cookie);
		}
		if(remUserName!=null && remPwd==null){
			Cookie cookie = new Cookie("remember", user.getUsername()+"-");
			cookie.setMaxAge(60*60*24*30);
			response.addCookie(cookie);
		}
		if(remUserName==null && remPwd!=null){
			Cookie cookie = new Cookie("remember", "-"+user.getPassword());
			cookie.setMaxAge(60*60*24*30);
			response.addCookie(cookie);
		}
		if(remUserName==null && remPwd==null){
			Cookie cookie = new Cookie("remember", "");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
			Cookie[] cookies=request.getCookies();
			if(cookies!=null){ 
				for(int i=0;i<cookies.length;i++){ 
		    		if(cookies[i].getName().equals("remember")){ 
		    			cookies[i].setMaxAge(0);
		    		}
				}
			}
			
		}
		
		String id = sysUser.getId();
		
		String roleIds = sysUser.getRoleIds();
		
		List<SysRole> roles = new ArrayList<SysRole>();
		//单一角色
		if (roleIds.indexOf(",")==-1) {
			roles.add(sysRoleService.selectById(roleIds));
		} else {
			roles = sysRoleService.selectListById(roleIds);
		}

		//  修改了一下
//		JSONArray jsonArray = JSONArray.fromObject(roles);
        String str =JSON.toJSONString(roles);
        JSONArray jsonArray = JSONArray.parseArray(str);

		String roleNames = "";
		List<String> list = new ArrayList<String>();
		for (SysRole role : roles) {
			list.add(role.getName());
		}
		for(String name:list){
			roleNames = roleNames + " " + name;
		}
		request.getSession().setAttribute(ControllerConstant.ROLE_NAMES, roleNames.trim());
		request.getSession().setAttribute(ControllerConstant.ALL_ROLES,jsonArray);

		return "redirect:/index.jsp";
		
	}
	
	
	@RequestMapping(value="/loginOut") 
	public String loginOut() throws Exception {
		SecurityUtils.getSubject().getSession().removeAttribute(ControllerConstant.USER_SESSION);
		SecurityUtils.getSubject().logout();
		return "redirect:/login.jsp";
	}
	
	@RequestMapping(value="/error/{type}")
	public String errorPage(@PathVariable String type) throws Exception {
		if("noPower".equals(type)) {
			return "error";
		}
		return "error";
	}
}


