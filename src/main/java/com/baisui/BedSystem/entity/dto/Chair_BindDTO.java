package com.baisui.BedSystem.entity.dto;

import java.io.Serializable;
import java.util.List;

import lombok.Data;

/**
 * @Description: 陪护椅信息略览，陪护椅的简略展示界面
 * @author Cheng_w
 * @date 2019年11月21日 上午11:23:47
 */
@Data
public class Chair_BindDTO implements Serializable{
	private static final long serialVersionUID = 8434658119694385243L;
	//椅子uuid
	private String id;
	//椅子编码
	private String code;
	//医院名称
	private String hospitalName;
	//医院科室
	private String departmentName;
	//工厂名称
	private String factoryName;
	//陪护椅单价
	private String unitPrices;
	//椅子生产日期
	private String  produceTime;
	//椅子保修期
	private String protectTime;
	//椅子绑定状态
	private String bindingState;
	//椅子锁状态
	private String lockState;
	//椅子详情(实质椅子uuid)
	private String details;
}
