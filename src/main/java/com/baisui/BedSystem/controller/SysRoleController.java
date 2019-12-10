package com.baisui.BedSystem.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.baisui.BedSystem.constants.ControllerConstant;
import com.baisui.BedSystem.entity.SysRole;
import com.baisui.BedSystem.service.SysResourceService;
import com.baisui.BedSystem.service.SysRoleService;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.WebResult;
import com.baisui.BedSystem.utils.request.RequestParameters;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/manager/role")
public class SysRoleController {
	
	private static final Logger logger = LoggerFactory.getLogger(SysRoleController.class);

	@Autowired
	private SysRoleService roleSrvImpl;
	
	@Autowired
	private SysResourceService resourceSrvImpl;

	//查询参数变量
	RequestParameters rp = null;


	/**
	 * 角色列表
	 * @param params
	 * @return
	 */
	@RequestMapping(value = "/roleList")
	@ResponseBody
	public DataGridPage roleList(@RequestParam Map<String, String> params){

		return roleSrvImpl.selectRoleByPage(params);
	}

	/**
	 * 删除角色列表
	 * @param roleId
	 * @return
	 */
	@RequestMapping(value = "/del")
	@ResponseBody
	public WebResult delete(String roleId) {

		WebResult webResult = roleSrvImpl.deleteRoleByRoleId(roleId);

		return webResult;
	}

	/**
	 * 新增角色信息
	 * @param sysRole
	 * @return
	 */
	@RequestMapping(value = "inserRoleInfo")
	@ResponseBody
	public WebResult inserRoleInfo(SysRole sysRole){

		WebResult webResult = roleSrvImpl.inserRoleInfo(sysRole);

		return webResult;
	}

	@RequestMapping(value = "/roleNameExist")
	@ResponseBody
	public WebResult queryRoleNameExist(String name){

		WebResult webResult = roleSrvImpl.queryRoleNameExist(name);

		return webResult;

	}

	@RequestMapping(value = "/roleName")
	@ResponseBody
	public List<SysRole> roleList(){

		return roleSrvImpl.selectRoleList();

	}

	@RequestMapping(value = "/updateByRoleId")
	@ResponseBody
	public SysRole updateByRoleId(String roleId){


		SysRole sysRole = roleSrvImpl.selectById(roleId);
		System.out.println("sysRole = " + sysRole.getName());
		return sysRole;

	}

	@RequestMapping(value = "/updateById")
	@ResponseBody
	public WebResult updateById(SysRole sysRole){

		WebResult webResult = roleSrvImpl.updateById(sysRole);

		return webResult;

	}










	
	@RequestMapping(value = "/create")
	public String create(Model model) throws Exception {
		model.addAttribute("role", new SysRole());
		try {
			List<Map> list = resourceSrvImpl.selectResourceTree();
			String str = JSON.toJSONString(list);
			JSONArray jsonArray = JSONArray.parseArray(str);
			//  原生
//			model.addAttribute("treeData", JSONArray.fromObject(resourceSrvImpl.selectResourceTree()));
			model.addAttribute("treeData", jsonArray);
		} catch (Exception e) {
			logger.error("Exception message", e);
		}
		model.addAttribute(ControllerConstant.OPER_KEY, ControllerConstant.CREATE);
		model.addAttribute("from", "role");
		return "manager/role/role_view";
	}
	
	
	@RequestMapping(value = "/insertOrUpdate")
	@ResponseBody
	public Object insertOrUpdate(SysRole role) {
		try {
//			role = roleSrvImpl.insertOrUpdate(role);
		} catch (Exception e) {
			logger.error("Exception message", e);
		}
		return role;
	}
	
	@RequestMapping(value = "/findById/{roleId}/{oper}/{from}")
	public String findById(@PathVariable String roleId, @PathVariable String oper, @PathVariable String from, Model model) {
		try {
			model.addAttribute("role", roleSrvImpl.selectById(roleId));
			List<Map> list = resourceSrvImpl.selectResourceTree();
			String str = JSON.toJSONString(list);
			JSONArray jsonArray = JSONArray.parseArray(str);
			model.addAttribute("treeData", jsonArray);
		} catch (Exception e) {
			logger.error("Exception message", e);
		}
		model.addAttribute(ControllerConstant.OPER_KEY, oper);
		model.addAttribute("from", from);
		return "manager/role/role_view";
	}
	

}
