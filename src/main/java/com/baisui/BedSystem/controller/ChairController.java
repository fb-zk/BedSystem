package com.baisui.BedSystem.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * 陪护椅管理模块
 * @author Administrator
 *
 */

import com.baisui.BedSystem.entity.ChairInfo;
import com.baisui.BedSystem.entity.dto.Chair_BindDTO;
import com.baisui.BedSystem.entity.dto.Chair_EchoDTO;
import com.baisui.BedSystem.entity.dto.Chair_HospitalDTO;
import com.baisui.BedSystem.service.ChairService;
import com.baisui.BedSystem.utils.DataGridPage;
import com.baisui.BedSystem.utils.StrUtils;
import com.baisui.BedSystem.utils.WebResult;

/**
 * 陪护椅模块
 * @author Administrator
 *
 */
@RestController
@RequestMapping("/Chair")
public class ChairController {
	
	
	private Logger logger = LoggerFactory.getLogger(ChairController.class);
	
	@Autowired
	ChairService chairService;
	
	private Map<String, Object> resultMap = new HashMap<String,Object>();
	
	/**
	 * 陪护椅查询（单表查）
	 * @param map
	 * @return
	 */
	@RequestMapping("/selectAllChair")
	@ResponseBody
	public ArrayList<ChairInfo> FindAllChair(@RequestParam Map<String, String> map){
		logger.info("map>>>>>>>>>>>>>>>>>>"+map);
		ArrayList<ChairInfo> selectAllChair = chairService.selectAllChair(map);
		System.out.println(selectAllChair);
		return selectAllChair;
	}
	
	/**
	 * 陪护椅绑定查询（联表查）
	 * @param map
	 * @return
	 */
	@RequestMapping("/selectBindingChair")
	@ResponseBody
	public DataGridPage selectBindingChair(@RequestParam Map<String, String> map){
		logger.info("map>>>>>>>>>>>>>>>>>>"+map);
		DataGridPage dataGridPage  =chairService.selectBindingChair(map);
		
		return dataGridPage;
	}
	
	/**
	 *  插入数据
	 * @param chair
	 * @return
	 */
	@RequestMapping("/saveChair")
	@ResponseBody
	public Map<String, Object> saveChair(ChairInfo chair){
		logger.info("chair>>>>>>>>>>>>>>>>>>"+chair);
		resultMap.clear();
		try {
			if (StrUtils.isEmpty(chair)) {
				throw new Exception("插入失败，chair=null,没有需要保存的数据");
			}
			//保存/修改成功
			chairService.saveChair(chair);
			resultMap.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			//保存/修改失败
			resultMap.put("success", false);
			resultMap.put("msg", e.getMessage());
			//手动回滚事务
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}
		return resultMap;
	}
	
	/**
	 * 	更新椅子数据
	 * @return
	 */
	@RequestMapping("/updateChair")
	public Map<String, Object> updateChair(Chair_EchoDTO chair_EchoDTO) {
		logger.info("chair_EchoDTO>>>>>>>>>>>>>>>>>>"+chair_EchoDTO);
		resultMap.clear();
		try {
			if (StrUtils.isEmpty(chair_EchoDTO)) {
				throw new Exception("插入失败，chair_EchoDTO=null,没有需要保存的数据");
			}
			//修改成功
			chairService.updateChair(chair_EchoDTO);
			resultMap.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			//修改失败
			resultMap.put("success", false);
			resultMap.put("msg", e.getMessage());
			//手动回滚事务
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}
		return resultMap;
	}
	
	/**
	 *    查找(数据回显和详情用)
	 * @param id
	 * @return
	 */
	@RequestMapping("/findChairByid")
	@ResponseBody
	public Chair_EchoDTO findChairByid(String id) {
		logger.info("id>>>>>>>>>>>>>>>>>>"+id);
		Chair_EchoDTO EchoDTO=null;
		try {
			if (StrUtils.isEmpty(id)) {
				throw new Exception("删除失败，id=null,没有选中行数据");
			}
			EchoDTO= chairService.findChairByid(id);
			//System.out.println("++++++++++++++++++++++EchoDTO="+EchoDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return EchoDTO;
	}
	
	/**
	 * 	删除椅子
	 * @param id
	 * @return
	 */
	@RequestMapping("/deleteChairByid")
	@ResponseBody
	public Map<String, Object> deleteChairByid(String id){
		logger.info("id>>>>>>>>>>>>>>>>>>"+id);
		resultMap.clear();
		try {
			if (StrUtils.isEmpty(id)) {
				//resultMap.put("msg", "删除失败，id=null,没有选中行数据");
				throw new Exception("删除失败，id=null,没有选中行数据");
			}
			chairService.deleteChairByid(id);
			resultMap.put("success", true);//成功
			//System.out.println("++++++++++id="+id+"删除成功！");
		} catch (Exception e) {
			e.printStackTrace();
			resultMap.put("success", false);//失败
			resultMap.put("msg", e.getMessage());
			
			//手动回滚事务
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}
		return resultMap;
	}
	
	
}
