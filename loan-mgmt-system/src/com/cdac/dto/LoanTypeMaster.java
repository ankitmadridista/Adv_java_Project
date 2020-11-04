package com.cdac.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class LoanTypeMaster {
	@Id
	private String loanType;
	private float rateOfInt;
	public LoanTypeMaster() {
		
	}	
	public LoanTypeMaster(String loanType) {
		super();
		this.loanType = loanType;
	}

	public String getLoanType() {
		return loanType;
	}
	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}
	public float getRateOfInt() {
		return rateOfInt;
	}
	public void setRateOfInt(float rateOfInt) {
		this.rateOfInt = rateOfInt;
	}
	@Override
	public String toString() {
		return " loanType=" + loanType + ", rateOfInt=" + rateOfInt;
	}
	
}
