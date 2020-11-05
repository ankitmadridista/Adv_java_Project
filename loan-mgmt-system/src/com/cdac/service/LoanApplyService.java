package com.cdac.service;

import java.util.List;

import com.cdac.dto.LoanApply;

public interface LoanApplyService {
	public void insertLoan(LoanApply loanApply);
	public List<LoanApply> viewPendingList(String custName);
	public List<LoanApply> viewApproveList(String custName);
	public List<LoanApply> viewRejectList(String custName);	
	public List<LoanApply> viewRepaidList(String custName);
	public List<LoanApply> viewAllPendingList();
	public List<LoanApply> viewAllApproveList();
	public List<LoanApply> viewAllRejectList();
	public List<LoanApply> viewAllRepaidList();
	public LoanApply viewApplyByName(int id);
	public void modifyLoanStatus(LoanApply loanApply);
	public void modifyInstallment(LoanApply loanApply);
}
