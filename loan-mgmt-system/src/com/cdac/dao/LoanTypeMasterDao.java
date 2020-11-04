package com.cdac.dao;

import java.util.List;

import com.cdac.dto.LoanTypeMaster;

public interface LoanTypeMasterDao {
	public void addLoanType(LoanTypeMaster loanTypeMaster);
	public List<LoanTypeMaster> showLoanType();
	public LoanTypeMaster findLoanType(String loanType);
	public void updateInterestRate(LoanTypeMaster loanTypeMaster);
	public void deleteInterestRate(String loanType);
	
}
