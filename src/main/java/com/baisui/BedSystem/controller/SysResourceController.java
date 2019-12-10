package com.baisui.BedSystem.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.baisui.BedSystem.constants.ControllerConstant;
import com.baisui.BedSystem.entity.SysResource;
import com.baisui.BedSystem.service.SysResourceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/manager/resource")
public class SysResourceController {
 
	private static final Logger logger = LoggerFactory.getLogger(SysRoleController.class);

	@Autowired
	private SysResourceService resourceService;
	
	@RequestMapping(value = "/create/{parentId}/{pCode}")
	public String create(Model model, @PathVariable String parentId, @PathVariable String pCode) {
		SysResource resource = null;
		resource = new SysResource();
		resource.setParentId(parentId);
		model.addAttribute("resource", resource);
		model.addAttribute("pCode", pCode);
		model.addAttribute(ControllerConstant.OPER_KEY, ControllerConstant.CREATE);
		return "manager/resource/resource_view";
	}
	

	@RequestMapping(value = "/insertOrUpdate")
	@ResponseBody
	public Object insertOrUpdate(SysResource resource, String pCode) {
		try {
			resource = resourceService.insertOrUpdate(resource, pCode);
		} catch (Exception e) {
			logger.error("Exception message", e);
		}
		return resource;
	}
	
	@RequestMapping(value = "/findById/{id}/{oper}")
	public String findById(@PathVariable String id, @PathVariable String oper, Model model) {
		try {
			model.addAttribute("resource", resourceService.selectById(id));
		} catch (Exception e) {
			logger.error("Exception message", e);
		}
		model.addAttribute(ControllerConstant.OPER_KEY, oper);
		return "manager/resource/resource_view";
	}
	
	@RequestMapping(value = "/delete")
	@ResponseBody
	public Object delete(String code) {
		try {
			return resourceService.deleteByCode(code);
		} catch (Exception e) {
			logger.error("Exception message", e);
		}
		return null;
	}
	
	@RequestMapping(value = "/tree")
	public Object resourceTree(Model model) {
		try {
			String str = JSON.toJSONString(resourceService.selectResourceTree());
			JSONArray jsonArray = JSONArray.parseArray(str);
			model.addAttribute("treeData", jsonArray);
		} catch (Exception e) {
			logger.error("Exception message", e);
		}
		return "manager/resource/resource_tree";
	}
}
