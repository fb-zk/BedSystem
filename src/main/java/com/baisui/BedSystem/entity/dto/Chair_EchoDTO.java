package com.baisui.BedSystem.entity.dto;

import java.io.Serializable;

import lombok.Data;
/**
 * 
 * @Description: 修改功能界面数据回显需要(详细信息需要)
 * @author Cheng_w
 * @date 2019年11月22日 下午4:26:27
 */
@Data
public class Chair_EchoDTO implements Serializable{

	private static final long serialVersionUID = 8158359123737954204L;
	//uuid
    private String id;
    //陪护椅编码
    private String code;
	
	//医院名称（医院表）
	private String hospitalId;
	//医院科室（科室表）
	private String departmentId;
	//工厂名称（工厂表）
	private String factoryId;
	 //陪护椅长度
    private String length;
	 //陪护椅宽度
    private String width;
    //陪护椅高度
    private String height;
	//陪护椅载重
    private String maxLoad;
    //最大使用次数
    private String maxUseCount;
    //材质
    private String texture;
	//陪护椅单价（工厂表）
	private String unitPrices;
	 //生产日期([2019-11-22])
    private String produceTime;
    //保修时间
    private String protectTime;
	 //绑定状态
    private String bindingState;
    //锁状态
    private String lockState;
    //锁类型
    private String lockType;
    //陪护椅锁待机时长
    private String powerLength;
    //陪护椅销售人员
    private String salespersonName;
    //陪护椅销售人员联系方式
    private String salespersonPhone;
}