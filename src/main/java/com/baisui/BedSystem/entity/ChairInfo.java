package com.baisui.BedSystem.entity;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;

/**
 * 陪护椅信息表
 * @author Administrator
 *
 */
@Data
public class ChairInfo implements Serializable{

	private static final long serialVersionUID = 8718811566232107244L;
	//uuid
    private String id;
    //陪护椅编码
    private String code;
    //锁状态
    private String lockState;
    //绑定状态
    private String bindingState;
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
    //生产日期([2019-11-22])
    private String produceTime;
    //保修时间
    private String protectTime;
    //锁类型
    private String lockType;
    //陪护椅锁待机时长
    private String powerLength;
    //陪护椅销售人员
    private String salespersonName;
    //陪护椅销售人员联系方式
    private String salespersonPhone;
    //创建时间[2019-11-22 12:42:54]
    private String createTime;
    //更新时间[2019-11-22 12:42:54]
    private String updateTime;
    //医院ID
    private String hospitalId;
    //工厂ID
    private String factoryId;
    //科室ID
    private String departmentId;
}