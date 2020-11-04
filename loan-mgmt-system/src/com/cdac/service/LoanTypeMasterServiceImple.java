package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.LoanTypeMasterDao;
import com.cdac.dto.LoanTypeMaster;

@Service
public class LoanTypeMasterServiceImple implements LoanTypeMasterService {

	@Autowired
	private LoanTypeMasterDao loanTypeMasterDao;
	
	@Override
	public void insertLoanType(LoanTypeMaster loanTypeMaster) {
		loanTypeMasterDao.addLoanType(loanTypeMaster);
	}

	@Override
	public List<LoanTypeMaster> viewLoanType() {
		return loanTypeMasterDao.showLoanType();
	}

	@Override
	public LoanTypeMaster selectLoanType(String loanType) {
		return loanTypeMasterDao.findLoanType(loanType);
	}

	@Override
	public void modifyInterestRate(LoanTypeMaster loanTypeMaster) {
		loanTypeMasterDao.updateInterestRate(loanTypeMaster);		
	}

	@Override
	public void removeInterestRate(String loanType) {
		loanTypeMasterDao.deleteInterestRate(loanType);
		
	}

}
