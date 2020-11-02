package com.cdac.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class LoanApply {
	@Id
	@GeneratedValue
	private int id;
	private String custName;
	private String loanType;
	private float amount;
	private int tenure;
	private float rateOfInt;
	private String applyDate;
	private String Status;
	private float monthlySalary;
	
	public LoanApply() {
	
	}
	public String getLoanType() {
		return loanType;
	}
	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public int getTenure() {
		return tenure;
	}
	public void setTenure(int tenure) {
		this.tenure = tenure;
	}

	public float getRateOfInt() {
		return rateOfInt;
	}
	public void setRateOfInt(float rateOfInt) {
		this.rateOfInt = rateOfInt;
	}
	public String getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public float getMonthlySalary() {
		return monthlySalary;
	}
	public void setMonthlySalary(float monthlySalary) {
		this.monthlySalary = monthlySalary;
	}


	@Override
	public String toString() {
		return " id=" + id + ", custName=" + custName + ", loanType=" + loanType + ", amount=" + amount + ", tenure="
				+ tenure + ", rateOfInt=" + rateOfInt + ", applyDate=" + applyDate + ", Status=" + Status
				+ ", monthlySalary=" + monthlySalary;
	}

}
