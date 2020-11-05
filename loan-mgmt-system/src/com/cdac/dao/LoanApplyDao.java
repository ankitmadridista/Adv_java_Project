package com.cdac.dao;

import java.util.List;

import com.cdac.dto.LoanApply;

public interface LoanApplyDao {
	public void addLoan(LoanApply loanApply);
	public List<LoanApply> showPendingList(String custName);
	public List<LoanApply> showApproveList(String custName);
	public List<LoanApply> showRejectList(String custName);
	public List<LoanApply> showRepaidList(String custName);	
	public List<LoanApply> showAllPendingList();
	public List<LoanApply> showAllApproveList();
	public List<LoanApply> showAllRejectList();
	public List<LoanApply> showAllRepaidList();
	public LoanApply showApplyByName(int id);
	public void updateLoanStatus(LoanApply loanApply);
	public void updateInstallment(LoanApply loanApply);
}
