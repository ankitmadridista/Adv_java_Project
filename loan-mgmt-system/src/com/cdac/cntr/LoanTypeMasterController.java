package com.cdac.cntr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.dto.LoanTypeMaster;
import com.cdac.service.LoanTypeMasterService;

@Controller
public class LoanTypeMasterController {
	
	@Autowired
	private LoanTypeMasterService loanTypeMasterService;
	
	
	//loan-type-form
	@RequestMapping(value = "/loan-type-form.htm")
	public String loanTypeForm(LoanTypeMaster loanTypeMaster) {
		
		return "set_loan_type_form";
	}
	
	//add-loan-type
	@RequestMapping(value = "/add-loan-type.htm", method = RequestMethod.POST)
	public String addLoanType(LoanTypeMaster loanTypeMaster) {
		
		loanTypeMasterService.insertLoanType(loanTypeMaster);
		return "admin_home";
	}
	
	
	//show-loan-type
	@RequestMapping(value = "/show-loan-type.htm")
	public String showLoanType(LoanTypeMaster loanTypeMaster, ModelMap map) {

		List<LoanTypeMaster> li = loanTypeMasterService.viewLoanType();
		map.put("list", li);
		
		return "show_loan_type";
	}
	
	
}
