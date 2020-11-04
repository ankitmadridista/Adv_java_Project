package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.LoanApply;
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
	
	//edit-interest form
	@RequestMapping(value = "/edit-admin-interestRate.htm")
	public String editInterestForm(@RequestParam String loanType, LoanTypeMaster loanTypeMaster, ModelMap map) {
		System.out.println(loanType);
		LoanTypeMaster la = loanTypeMasterService.selectLoanType(loanType);
		System.out.println("la: " + la);
		//List<LoanTypeMaster> li = loanTypeMasterService.viewLoanType();
		map.put("loanTypeMaster", la);
		
		return "edit_interestRate_from";
	}
	
	//edit interest
	@RequestMapping(value = "update-interest-rate.htm", method = RequestMethod.POST)
	public String editInterest(LoanTypeMaster loanTypeMaster, ModelMap map, HttpSession s) {
		System.out.println("in update contro: "+loanTypeMaster);
		loanTypeMasterService.modifyInterestRate(loanTypeMaster);

		System.out.println("updation done");
		return "redirect:show-loan-type.htm";
	}	
	
	//delete interest
		@RequestMapping(value = "delete-loan-type.htm")
		public String deleteInterest(@RequestParam String loanType ,LoanTypeMaster loanTypeMaster, ModelMap map, HttpSession s) {
			System.out.println("in delete controller: "+loanType);
			
			loanTypeMasterService.removeInterestRate(loanType);

			System.out.println("deletion done");
			return "redirect:show-loan-type.htm";
		}	
		
	
	
	
//	//show-loan-type for dropdown
//		@RequestMapping(value = "/show-loan-dropdown-type.htm")
//		public String showLoanTypeDropdown(LoanTypeMaster loanTypeMaster, ModelMap map) {
//
//			List<LoanTypeMaster> li = loanTypeMasterService.viewLoanType();
//			map.put("list", li);
//			
//			return "show_loan_type";
//		}
	
	
	
}
