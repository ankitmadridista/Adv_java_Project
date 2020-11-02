package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.LoanApplyDao;
import com.cdac.dto.LoanApply;

@Service
public class LoanApplyServiceImple implements LoanApplyService {

	@Autowired
	private LoanApplyDao loanApplyDao;
	
	@Override
	public void insertLoan(LoanApply loanApply) {
		loanApplyDao.addLoan(loanApply);
	}

	@Override
	public List<LoanApply> viewList(String custName) {
		return loanApplyDao.showList(custName);
	}

	@Override
	public List<LoanApply> viewAllPendingList() {
		return loanApplyDao.showAllPendingList();
	}
	
	@Override
	public List<LoanApply> viewAllApproveList() {	
		return loanApplyDao.showAllApproveList();
	}
	@Override
	public List<LoanApply> viewAllRejectList() {	
		return loanApplyDao.showAllRejectList();
	}


	@Override
	public LoanApply viewApplyByName(int id) {		
		return loanApplyDao.showApplyByName(id);
	}

	@Override
	public void modifyLoanStatus(LoanApply loanApply) {
		loanApplyDao.updateLoanStatus(loanApply);
	}

}
