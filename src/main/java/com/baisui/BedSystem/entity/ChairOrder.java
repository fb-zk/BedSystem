package com.baisui.BedSystem.entity;

import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;


@Data
@Accessors(chain = true)
public class ChairOrder  implements Serializable {

	private static final long serialVersionUID =  1209690179439451874L;


	private String orderId;

	private String userId;

	private String hospitalId;

	private String departmentId;

	private String bedAddress;

	private String roomId;

	private String startTime;

	private String endTime;

	private String serviceTime;

	private String billingTime;

	private String cost;

	private String payState;

	private String chaperonageBedCode;

	private String endWay;

	private String payTime;

	private String problemDescription;

	private String problemState;

	private String nurseId;

	private String nursePhone;

	private String bedImage;

	private String maintainUserId;

	private String checkState;

	private String checkTime;

	private String commitTime;

	private String payWay;

	private String problemId;

	private String freeTime;

	private String payId;

}
