package com.baisui.BedSystem.entity;

import java.io.Serializable;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class BedOrder implements Serializable {
    /**
     * ID
     */
    private String orderId;
    /**
     * 用户ID
     */
    private String userId;
    /**
     * 医院ID
     */
    private String hospitalId;
    /**
     * 科室ID
     */
    private String departmentId;
    /**
     * 病床地址
     */
    private String bedAddress;
    /**
     * 病房ID
     */
    private String roomId;
    /**
     * 开始时间
     */
    private String startTime;
    /**
     * 结束时间
     */
    private String endTime;
    /**
     * 总时长
     */
    private String serviceTime;
    /**
     * 计算消费金额所用的时间（例:不足一小时按一小时收费）
     */
    private String billingTime;
    /**
     * 用户使用陪护床消费的金额
     */
    private String cost;
    /**
     * 支付方式（0.支付宝、1.微信、2.app）
     */
    private String payWay;
    /**
     * 支付状态（0.未支付，1.已完成支付，2.待审核）
     */
    private String payState;
    /**
     * 陪护床编号
     */
    private String chaperonageBedCode;
    /**
     * 关闭方式（0.异常关闭，1.正常关闭）
     */
    private String endWay;
    /**
     * 支付时间
     */
    private String payTime;
    /**
     * 故障反馈描述
     */
    private String problemDescription;
    /**
     * 所选问题项
     */
    private String problemState;
    /**
     * 管理员（护士ID）
     */
    private String nurseId;
    /**
     * 管理员联系方式
     */
    private String nursePhone;
    /**
     * 图片地址
     */
    private String bedImage;
    /**
     * 维修人员ID
     */
    private String maintainUserId;
    /**
     * 审核状态
     */
    private String checkState;
    /**
     * 审核时间
     */
    private String checkTime;
    
    
    private static final long serialVersionUID = 1L;

}