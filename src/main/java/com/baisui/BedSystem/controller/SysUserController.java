package com.baisui.BedSystem.controller;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.baisui.BedSystem.constants.ControllerConstant;
import com.baisui.BedSystem.constants.SaltConstant;
import com.baisui.BedSystem.entity.SysUser;
import com.baisui.BedSystem.entity.vo.SysUserVo;
import com.baisui.BedSystem.service.SysResourceService;
import com.baisui.BedSystem.service.SysRoleService;
import com.baisui.BedSystem.service.SysUserService;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.MD5;
import com.baisui.BedSystem.utils.StrUtils;
import com.baisui.BedSystem.utils.WebResult;
import com.baisui.BedSystem.utils.request.RequestParameters;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 */
@Controller
@RequestMapping("/manager/user")
public class SysUserController {

    private static final Logger logger = LoggerFactory.getLogger(SysUserController.class);

    @Autowired
    private SysUserService sysUserService;

    @Autowired
    private SysRoleService roleService;

    @Autowired
    private SysResourceService resourceService;


    RequestParameters rp = null;

    /**
     *  用户管理
     * @param
     * @return
     */
    @RequestMapping(value = "/userList")
    @ResponseBody
    public DataGridPage userList(@RequestParam Map<String, String> params) {
        
        return sysUserService.selectUserByPage(params);

    }

    /**
     *  角色管理界面 - 根据roleId查看详情
     * @param roleId
     * @return
     */
    @RequestMapping(value = "/findByRoleId")
    @ResponseBody
    public ModelAndView findByRoleIds(String roleId){

        List<SysUser> sysList = sysUserService.findByRoleIdLists(roleId);

        ModelAndView mdv = new ModelAndView();
        mdv.setViewName("showRole");
        mdv.addObject("sys", sysList);
        return mdv;
    }

    @RequestMapping(value = "/insertInfo")
    @ResponseBody
    public WebResult insertInfo(SysUserVo sysUserVo){
        System.out.println("进入角色添加方法"+"------------------------------------------------------"+ sysUserVo);

        WebResult webResult = sysUserService.insertInfo(sysUserVo);

        return webResult;
    }

    /**
     * 删除角色信息
     * @param id
     * @return
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    public WebResult delete(String id) {

        WebResult webResult = sysUserService.deleteUserById(id);

        return webResult;

    }


    @RequestMapping(value = "/nameExist")
    @ResponseBody
    public WebResult queryNameExist(String userName){

        WebResult webResult = sysUserService.queryNameExist(userName);

        return webResult;

    }








    @RequestMapping(value = "/create")
    public String create(Model model) {
        model.addAttribute("user", new SysUser());
        try {
            String type = "1";
            model.addAttribute("roleList", roleService.selectRoleByType(type));
            //  修改
            String str = JSON.toJSONString(resourceService.selectResourceTree());
            JSONArray jsonArray = JSONArray.parseArray(str);

            model.addAttribute("treeData", jsonArray);
            //原生
//			model.addAttribute("treeData", JSONArray.fromObject());
        } catch (Exception e) {
            logger.error("Exception message", e);
        }
        model.addAttribute(ControllerConstant.OPER_KEY, ControllerConstant.CREATE);
        return "manager/user/user_view";
    }

    @RequestMapping(value = "/insertOrUpdate")
    @ResponseBody
    public Object insertOrUpdate(SysUser user) {
        try {
            user = sysUserService.insertOrUpdate(user);
        } catch (Exception e) {
            logger.error("Exception message", e);
        }
        return user;
    }



    @RequestMapping(value = "/changePassword")
    @ResponseBody
    public String changePassword(String id, String oldPassword, String newPassword, HttpServletRequest request) {
        try {
            Map<String, Object> map1 = new HashMap<String, Object>();
            map1.put("id", id);
            SysUser user = sysUserService.selectUserById(map1);
            if (user != null) {
                if (MD5.encode(SaltConstant.PW_SALT + oldPassword).equals(user.getPassword())) {
                    if (oldPassword.trim().equals(newPassword.trim())) {
                        return "3";
                    } else {
                        Map<String, String> map = new HashMap<String, String>();
                        map.put("id", id);
                        map.put("password", MD5.encode(SaltConstant.PW_SALT + newPassword));
                        sysUserService.changePassword(map);
                        return "2";
                    }
                } else {
                    return "1";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "0";
        }

        return "0";
    }

    @RequestMapping(value = "/selectByUserName")
    @ResponseBody
    public Object selectByUserName(@RequestParam("username") String username) {
        int type = sysUserService.selectByUserName(StrUtils.trim(username));
        return type;
    }
}
