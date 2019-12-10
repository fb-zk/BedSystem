package com.baisui.BedSystem.entity;

import java.io.Serializable;

/**
 * 陪护床资源分配表
 * 
 * @author
 */
public class BedResourceAllocation implements Serializable {
	/**
	 * ID
	 */
	private String id;
	/**
	 * 用户缴纳押金的金额
	 */
	private String cashPledgeMoney;
	/**
	 * 2元/20分钟
	 */
	private String costNormal;
	/**
	 * 医院id
	 */
	private String hospitalId;
	/**
	 * 医院名称
	 */
	private String hospitalName;
	/**
	 * 免费时间
	 */
	private String freeTime;
	/**
	 * 费用分成
	 */
	private String costProportion;

	/**
	 * 时间段设置开始时间
	 */
	private String beginTime;

	/**
	 * 时间段设置结束时间
	 */
	private String endTime;

	/**
	 * 封顶金额
	 */
	private String limitAmount;
	

	public String getCostProportion() {
		return costProportion;
	}

	public void setCostProportion(String costProportion) {
		this.costProportion = costProportion;
	}

	private static final long serialVersionUID = 1L;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCashPledgeMoney() {
		return cashPledgeMoney;
	}

	public void setCashPledgeMoney(String cashPledgeMoney) {
		this.cashPledgeMoney = cashPledgeMoney;
	}

	public String getCostNormal() {
		return costNormal;
	}

	public void setCostNormal(String costNormal) {
		this.costNormal = costNormal;
	}

	public String getHospitalId() {
		return hospitalId;
	}

	public void setHospitalId(String hospitalId) {
		this.hospitalId = hospitalId;
	}

	public String getHospitalName() {
		return hospitalName;
	}

	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}

	public String getFreeTime() {
		return freeTime;
	}

	public void setFreeTime(String freeTime) {
		this.freeTime = freeTime;
	}

	public String getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getLimitAmount() {
		return limitAmount;
	}

	public void setLimitAmount(String limitAmount) {
		this.limitAmount = limitAmount;
	}

	@Override
	public boolean equals(Object that) {
		if (this == that) {
			return true;
		}
		if (that == null) {
			return false;
		}
		if (getClass() != that.getClass()) {
			return false;
		}
		BedResourceAllocation other = (BedResourceAllocation) that;
		return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
				&& (this.getCashPledgeMoney() == null ? other.getCashPledgeMoney() == null
						: this.getCashPledgeMoney().equals(other.getCashPledgeMoney()))
				&& (this.getCostNormal() == null ? other.getCostNormal() == null
						: this.getCostNormal().equals(other.getCostNormal()));
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
		result = prime * result + ((getCashPledgeMoney() == null) ? 0 : getCashPledgeMoney().hashCode());
		result = prime * result + ((getCostNormal() == null) ? 0 : getCostNormal().hashCode());
		return result;
	}

	@Override
	public String toString() {
		return "BedResourceAllocation [id=" + id + ", cashPledgeMoney=" + cashPledgeMoney + ", costNormal=" + costNormal
				+ ", hospitalId=" + hospitalId + ", freeTime=" + freeTime + "]";
	}


}