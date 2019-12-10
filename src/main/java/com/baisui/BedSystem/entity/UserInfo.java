package com.baisui.BedSystem.entity;

import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * @Description  
 * @Author  Hunter
 * @Date 2019-11-14 
 */

@Data
@Accessors(chain = true)
public class UserInfo  implements Serializable {

	private static final long serialVersionUID =  7253626140787155096L;

	private String id;

	/**
	 * 姓名
	 */
	private String name;

	/**
	 * 用户名
	 */
	private String username;

	/**
	 * 性别
	 */
	private Long sex;

	/**
	 * 生日
	 */
	private String birthday;

	/**
	 * 身份证号
	 */
	private String idcardno;

	/**
	 * 密码
	 */
	private String password;

	/**
	 * 职业
	 */
	private Long vocation;

	/**
	 * 邮箱
	 */
	private String email;

	/**
	 * 地址
	 */
	private String address;

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
	 * 照片
	 */
	private String image;

	private Long integral;

	/**
	 * 账户余额
	 */
	private Long balance;

	private String recordtime;

	/**
	 * vip时长
	 */
	private String viprecordtime;

	/**
	 * 手机号
	 */
	private String mobileno;

	private Long surplus;

	/**
	 * 最后付款时间
	 */
	private String lastpaytime;

	private Long ispush;

	/**
	 * 数据字典维护
	 */
	private Long banktype;

	private String bankno;

	private Long authentication;

	private String authenticationtime;

	private String nickname;

	/**
	 * /** 账户状态 0：冻结状态 1*/

	private String balancestatus;

	private String registrationid;

	private String commonno;

	private Long complimentary;

	/**
	 * 代理人工号
	 */
	private String proxyid;

	/**
	 * 用户推荐医生
	 */
	private String referproxyid;

	/**
	 * 推荐的佣金累积
	 */
	private Long cumulativemoney;

	/**
	 * 支付宝账号
	 */
	private String proxyemail;

	/**
	 * 支付宝账户名称
	 */
	private String emailname;

	/**
	 * 提现卡管理密码
	 */
	private String managerpass;

	/**
	 * 用户来源 0;E大夫  1：婚检   2：孕检   3：（再）生育
	 */
	private Long source;

	/**
	 * 检查是否实名制
	 */
	private Long checkrealname;

	private Long passcount;

	/**
	 * 用来判断婚孕检检察人员的实时状态0是登记1是检查报告已出
	 */
	private String perstatus;

	/**
	 * 0:第一次登入 
	 */
	private Long loginstatus;

}
