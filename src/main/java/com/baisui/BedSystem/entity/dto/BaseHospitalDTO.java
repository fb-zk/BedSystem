package com.baisui.BedSystem.entity.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @Description  
 * @Author  Hunter
 * @Date 2019-11-25 
 */

@Data
public class BaseHospitalDTO implements Serializable {

	private static final long serialVersionUID =  8751003319453112508L;

   
	private String id;

	/**
	 * 医院名称
	 */
	private String name;

	/**
	 * 医院等级 3：三级，2：二级，1：一级 0：其他
	 */
	private String hospitalLevel;

	/**
	 * 医院性质（名办 公办）
	 */
	private String hospitalNature;

	/**
	 * 医院类型01人民医院，02中医院，03妇幼保健院，04其它
	 */
	private String type;

	/**
	 * 医院地址
	 */
	private String address;

	/**
	 * 医院电话
	 */
	private String hospitalTel;

	/**
	 * 图片
	 */
	private String image;

	/**
	 * 省
	 */
	private String province;

	/**
	 * 市
	 */
	private String city;

	/**
	 * 区
	 */
	private String area;

	/**
	 * 县
	 */
	private String country;

	/**
	 * 签约时间
	 */
	private String signingDate;

	/**
	 * 服务到期时间
	 */
	private String expireDate;

	/**
	 * 服务状态(0:到期 1:服务中)
	 */
	private String serviceState;

	/**
	 * 销售姓名
	 */
	private String salerName;

	/**
	 * 账号
	 */
	private String account;

	/**
	 * 密码
	 */
	private String password= new String("123456");


	/**
	 * 签约状态(默认为1:已签约  0:未签约)
	 */
	private String signingState= new String("1");

	/**
	 * 创建时间
	 */
	private String createTime;

	/**
	 * 修改时间
	 */
	private String updateTime;

	/**
	 * 医院联系人
	 */
	private String contact;

	/**
	 * 备注
	 */
	private String remark;

	/**
	 * 医院级别 1：甲，2：乙，3：丙，4：其他
	 */
	private String grade;

	/**
	 * 销售人员联系方式
	 */
	private String salesTel;




}
