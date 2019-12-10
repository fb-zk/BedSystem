package com.baisui.BedSystem.controller;

import com.baisui.BedSystem.entity.ChairResourceAllocation;
import com.baisui.BedSystem.entity.dto.ChairResourceAllocationDTO;
import com.baisui.BedSystem.service.impl.ChairResourceAllocationServiceImpl;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.WebResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.sound.midi.Soundbank;
import java.util.Map;

/**
 * @description: 医院信息操作
 * @author: Chenye
 * @date: 2019/9/24:16:57
 */
@Controller
@RequestMapping("/resourceAllocation")
public class ResourceAllocationController {


    @Autowired
    private ChairResourceAllocationServiceImpl chairResourceAllocationService;

    /**
     * 查询所有医院计费信息
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/selectBedResourceAllocation")
    public DataGridPage selectBedResourceAllocation(@RequestParam Map<String, String> params) {

        return chairResourceAllocationService.selectBedResourceByPage(params);
    }

    /**
     * 根据id删除医院计费信息
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/del")
    public WebResult delResourceAllocation(String id){

        return chairResourceAllocationService.deleteByPrimaryKey(id);
    }




    /**
     * 修改计费信息
     * @param chair
     * @return
     */
  /*  @ResponseBody
    @RequestMapping("/insertOrUpdate")
    public WebResult insertOrUpdate(ChairResourceAllocation chair){
        System.out.println("-------------进入保存或者更新："+chair);
        WebResult webResult = chairResourceAllocationService.insertOrUpdate(chair);
        System.out.println(webResult.getData());
        return webResult;
    }*/

    /**
     * 根据id查询计费信息
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/findById")
    public ChairResourceAllocationDTO findById(String id){
        //System.out.println("--------------------"+id);


        return chairResourceAllocationService.findById(id);
    }

    /**
     * 新增计费信息
     * @param chair
     * @return
     */
    @ResponseBody
    @RequestMapping("/insert")
    public WebResult insert(ChairResourceAllocation chair){
       // System.out.println("进入insert========"+chair);

        return chairResourceAllocationService.insert(chair);
    }

    /**
     * 修改计费信息
     * @param chair
     * @return
     */
    @ResponseBody
    @RequestMapping("/update")
    public WebResult update(ChairResourceAllocationDTO chair){
       // System.out.println("==============进入修改"+chair);

        return chairResourceAllocationService.update(chair);
    }
}
