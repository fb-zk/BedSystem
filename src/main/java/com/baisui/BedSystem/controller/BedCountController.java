package com.baisui.BedSystem.controller;

import com.baisui.BedSystem.entity.dto.BedMemberDateilsDTO;
import com.baisui.BedSystem.entity.dto.BedTimeCountDTO;
import com.baisui.BedSystem.service.BedCountService;
import com.baisui.BedSystem.utils.DataGridPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/count")
public class BedCountController {

	@Autowired
	private BedCountService bedCountService;
	
	/**
	 * 使用次数统计
	 * @param params
	 * @return
	 */
	@RequestMapping("/counts")
	public DataGridPage queryCountsList(@RequestParam Map<String, String> params) {
		return bedCountService.queryCountsList(params);
	}
	
	/**
	 * 订单统计
	 * @param params
	 * @return
	 */
	@RequestMapping("/order")
	public DataGridPage queryOrderCountList(@RequestParam Map<String, String> params) {
		return bedCountService.queryOrderCountList(params);
	}
	
	/**
	 * 地区统计
	 * @param params
	 * @return
	 */
	@RequestMapping("/hospital")
	public DataGridPage queryHospitalCountList(@RequestParam Map<String, String> params) {
		return bedCountService.queryHospitalCountList(params);
	}

	/**
	 * 医院性质统计
	 * @param params
	 * @return
	 */
	@RequestMapping("/nature")
	public DataGridPage queryHospitalNatureList(@RequestParam Map<String, String> params) {
		return bedCountService.queryHospitalNatureList(params);
	}
	
	/**
	 * 科室统计
	 * @param params
	 * @return
	 */
	@RequestMapping("/department")
	public DataGridPage queryDepartmentCountList(@RequestParam Map<String, String> params) {
		return bedCountService.queryDepartmentCountList(params);
	}
	
	/**
	 * 时间段
	 * @param params
	 * @return
	 */
	@RequestMapping("/date")
	public List<BedTimeCountDTO> queryDate(@RequestParam Map<String, String> params) {
		return bedCountService.queryDate(params);
	}
	
	@RequestMapping("/saleHospital")
	public DataGridPage querySaleHospitalList(@RequestParam Map<String, String> params) {
		return bedCountService.querySaleHospitalList(params);
	}
	
	@RequestMapping("/saleHospitalDetail")
	public DataGridPage querysaleHospitalDetailList(@RequestParam Map<String, String> params) {
		return bedCountService.querysaleHospitalDetailList(params);
	}
	
	/**
	 * 消费者
	 * @param params
	 * @return
	 */
	@RequestMapping("/bedUser")
	public DataGridPage queryBedUserList(@RequestParam Map<String, String> params) {
		return bedCountService.queryBedUserList(params);
	}

//	@PathVariable


	@RequestMapping("/findUserId")
	public ModelAndView queryBedUserDetail(String userId) {
		List<BedMemberDateilsDTO> bedMemberDateilsDTOS = bedCountService.queryMemberDateils(userId);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bedMember");
		mv.addObject("user", bedMemberDateilsDTOS);
		return mv;
	}
}
