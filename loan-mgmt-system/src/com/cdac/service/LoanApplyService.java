package com.cdac.service;

import java.util.List;

import com.cdac.dto.LoanApply;

public interface LoanApplyService {
	public void insertLoan(LoanApply loanApply);
	public List<LoanApply> viewList(String custName);
	public List<LoanApply> viewAllPendingList();
	public List<LoanApply> viewAllApproveList();
	public List<LoanApply> viewAllRejectList();
	public LoanApply viewApplyByName(int id);
	public void modifyLoanStatus(LoanApply loanApply);
}
