package com.baisui.BedSystem.controller;

import com.baisui.BedSystem.constants.ControllerConstant;
import com.baisui.BedSystem.entity.BaseHospital;
import com.baisui.BedSystem.entity.ChairDepartment;
import com.baisui.BedSystem.entity.dto.Chair_HospitalDTO;
import com.baisui.BedSystem.service.BaseHospitalService;
import com.baisui.BedSystem.service.ChairDepartmentService;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.WebResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @description: 医院信息操作
 * @author: Chenye
 * @date: 2019/9/24:16:57
 */
@Controller
@RequestMapping("/hospital")
public class BaseHospitalController {

    @Autowired
    private BaseHospitalService hospitalService;
    
    @Autowired
    private ChairDepartmentService departmentService;


    /**
     * 新增对象
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/create")
    public String create(Model model, HttpServletRequest request) {
        System.out.println("进入create");
        model.addAttribute("hospital", new BaseHospital());

        model.addAttribute(ControllerConstant.OPER_KEY, ControllerConstant.CREATE);
        request.getSession().removeAttribute("hospitalId");
        return "add";
    }

    /**
     * 新增医院信息(医院录入)
     *
     * @param baseHospital
     * @param    //bindingResult
     * @return
     *
     *
     */
    @PostMapping("/save")
    @ResponseBody
    public WebResult insert(BaseHospital baseHospital, HttpServletRequest request) {
//        String name = request.getParameter("name");
        System.out.println("进入save" + baseHospital);
        return hospitalService.insert(baseHospital);
        // Result result = new Result();
//        if(bindingResult.hasErrors()){
//            return result.setMsg(new Exception("参数异常"));
//        }
        // TODO:数据验证


    }

    /**
     * 修改医院信息
     *
     * @param baseHospital   医院信息
     * @param bindingResult
     * @return
     */
    @PostMapping("/update")
    @ResponseBody
    public WebResult update( BaseHospital baseHospital, BindingResult bindingResult) {

        // TODO:数据验证


        return hospitalService.update(baseHospital);
    }

    /**
     * 删除医院信息
     *
     * @param id 医院id
     * @return
     */
    @GetMapping("/del")
    public String deleteById(String id) {
        System.out.println("进入删除");
//        if(bindingResult.hasErrors()){
//            return result.setMsg(new Exception("参数异常"));
//        }
        // TODO:数据验证

         hospitalService.delete(id);
       /* if (res > 0) {
            result.setCode(CommonEnum.SUCCESS.getCode());
            result.setMsg(CommonEnum.SUCCESS.getMsg());
        } else {
            result.setCode(CommonEnum.FAIL.getCode());
            result.setMsg(CommonEnum.FAIL.getMsg());
        }*/
        return "redirect:/manage.jsp";
    }

    /**
     * 查询所有医院信息
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/queryAll")
    public DataGridPage selectAll(@RequestParam Map<String, String> params) {

        return hospitalService.selectAll(params);
    }

    /**
     * 查询医院的详细信息
     *
     * @param id
     * @return
     */
    @GetMapping("/findById")
    public ModelAndView findById(String id) {

        BaseHospital baseHospital = hospitalService.findById(id);
        List<ChairDepartment> chairDepartments = departmentService.selectByHospitalId(id);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("addDetail");
//        return result;
        mav.addObject("hospital",baseHospital);
        mav.addObject("departments", chairDepartments);
        System.out.println("hospital SalerName:" + baseHospital.getSalerName());
        System.out.println("hospital:" + baseHospital);
        return mav;
    }

    /**
     * 根据医院id查询该医院下所有科室
     * @param hospitalId
     * @return
     */
    @ResponseBody
    @RequestMapping("/findChairDepartmentById")
    public WebResult findChairDepartmentById(String hospitalId){
        List<ChairDepartment> chairDepartments = departmentService.selectByHospitalId(hospitalId);
        for (ChairDepartment chairDepartment : chairDepartments) {
            System.out.println("------chairDepartment");
        }
        return new WebResult("200",null,chairDepartments);
    }

    /**
     * 增加科室
     * @param chairDepartment
     * @return
     */
    @ResponseBody
    @RequestMapping("/insertDepartment")
    public WebResult insertDepartment( ChairDepartment chairDepartment){
        System.out.println(chairDepartment);

        return departmentService.insertDepartment(chairDepartment);
    }

    @ResponseBody
    @RequestMapping("/deleteDepartment")
    public WebResult deleteDepartment(String id){
       // String id = chairDepartment.getId();
        System.out.println("id------"+id);
        return departmentService.deleteDepartment(id);
    }


 /**
     * 	根据医院id查询 - 计费管理
     * @return
     */
    @RequestMapping("/hospitalName")
    @ResponseBody
    public List<BaseHospital> findHospitalName(){

        return hospitalService.findHospitalName();
    }

    /**
     * 	根据医院id来查询，医院下拉框动态数据需要  - 陪护椅信息
     * @return
     */
    @RequestMapping("/findHospitalByid")
    @ResponseBody
    public List<Chair_HospitalDTO> findHospitalByid(){
        List<Chair_HospitalDTO> list= hospitalService.findHospitalByid();
        return list;
    }

}
