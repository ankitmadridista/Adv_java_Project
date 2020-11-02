package com.cdac.service;

import java.util.List;

import com.cdac.dto.LoanTypeMaster;

public interface LoanTypeMasterService {

	public void insertLoanType(LoanTypeMaster loanTypeMaster);
	public List<LoanTypeMaster> viewLoanType();
	public LoanTypeMaster selectLoanType(String loanType);
}
