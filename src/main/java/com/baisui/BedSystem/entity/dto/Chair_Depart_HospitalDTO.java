package com.baisui.BedSystem.entity.dto;

import lombok.Data;
/**
 * 	医院与科室联查ID用
 * @Description: TODO
 * @author Cheng_w
 * @date 2019年12月4日 上午9:27:34
 */
@Data
public class Chair_Depart_HospitalDTO{
	//医院id
	private String hospitalId;
	//科室id
	private String departmentId;
}
