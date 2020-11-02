package com.cdac.cntr;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Customer;
import com.cdac.dto.LoanApply;
import com.cdac.dto.LoanTypeMaster;
import com.cdac.service.LoanApplyService;
import com.cdac.service.LoanTypeMasterService;

@Controller
public class LoanApplyController {

	@Autowired
	private LoanApplyService loanApplyService;
	@Autowired
	private LoanTypeMasterService loanTypeMasterService;
	
	//my-loan-pending-list(front page)
	@RequestMapping(value = "/my-loan-or-apply.htm")
	public String myloanorapply(LoanApply loanApply, ModelMap map, HttpSession s) {
		String custName = ( (Customer)s.getAttribute("customer") ).getCustName() ; 
		List<LoanApply> list = loanApplyService.viewList(custName);
		
		map.put("list", list);
		return "my_loan_or_apply";
	}
	
	//loan-form
	@RequestMapping(value = "/loan-apply-form.htm")
	public String addLoanForm(LoanApply loanApply, ModelMap map) {
		map.put("loanApply", new LoanApply());
		return "loan_apply_form";
	}
	
	//after-form-fill
	@RequestMapping(value = "/loan-apply.htm", method = RequestMethod.POST)
	public String addLoan(LoanApply loanApply, ModelMap map, HttpSession s) {
		
		String custName = ((Customer)s.getAttribute("customer")).getCustName();
		System.out.println(custName);
		
		LoanTypeMaster loanTypeMaster = loanTypeMasterService.selectLoanType(loanApply.getLoanType());
		
		float roi = loanTypeMaster.getRateOfInt();
		System.out.println("roi: "+roi);
		
		loanApply.setCustName(custName);
		loanApply.setStatus("Pending");
		loanApply.setRateOfInt(roi);
		loanApply.setApplyDate(new Date().toString());
		loanApplyService.insertLoan(loanApply);
		map.put("loanApply", new LoanApply());
		return "redirect:my-loan-or-apply.htm";
	}
	
	
	@RequestMapping(value = "/admin-view-apply.htm")
	public String viewPending(LoanApply loanApply, ModelMap map1,  ModelMap map2, ModelMap map3, HttpSession s) {
		//String custName = ( (Customer)s.getAttribute("customer") ).getCustName() ; 
		
		//pending
		List<LoanApply> list1 = loanApplyService.viewAllPendingList();
		map1.put("list1", list1);			
		
		//accept
		List<LoanApply> list2 = loanApplyService.viewAllApproveList();
		map2.put("list2", list2);
			
		//reject
		List<LoanApply> list3 = loanApplyService.viewAllRejectList();
		map3.put("list3", list3);
		
		return "admin_show_apply";
	}
	
	
	@RequestMapping(value = "/view-loan-apply-details.htm")
	public String viewLoanApplyDet(@RequestParam int id, LoanApply loanApply, ModelMap map, HttpSession s) {
		//String custName = ( (Customer)s.getAttribute("customer") ).getCustName() ; 
		
		LoanApply ld = loanApplyService.viewApplyByName(id);
		map.put("loanDetails", ld );		
		return "view_apply_details";
	}	

	//approve
	@RequestMapping(value = "/approve-loan.htm")
	public String approveLoan(@RequestParam int id, LoanApply loanApply, ModelMap map, HttpSession s) {
		
		LoanApply la = loanApplyService.viewApplyByName(id);
		
		la.setStatus("Approve");
		
		System.out.println(la.toString());
		
		loanApplyService.modifyLoanStatus(la);
		//map.put("list", list);
		System.out.println("updation done");
		return "redirect:admin-view-apply.htm";
	}	
	
	//reject
	@RequestMapping(value = "/reject-loan.htm")
	public String rejectLoan(@RequestParam int id, LoanApply loanApply, ModelMap map, HttpSession s) {
		
		LoanApply la = loanApplyService.viewApplyByName(id);
		
		la.setStatus("Reject");
		
		System.out.println(la.toString());
		
		loanApplyService.modifyLoanStatus(la);
		//map.put("list", list);
		System.out.println("updation done");
		return "redirect:admin-view-apply.htm";
	}	
	
	
}
