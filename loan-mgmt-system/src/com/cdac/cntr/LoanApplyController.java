package com.cdac.cntr;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
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
	public String myloanorapply(LoanApply loanApply, ModelMap map1, ModelMap map2, ModelMap map3, ModelMap map4, HttpSession s, HttpServletResponse ss) throws IOException {
	
		CustomerController.checkSession(s, ss);
		String custName = (s.getAttribute("customer") != null) ? 
				( (Customer)s.getAttribute("customer") ).getCustName() :
					"";
//		String custName = ( (Customer)s.getAttribute("customer") ).getCustName() ; 
		List<LoanApply> list1 = loanApplyService.viewPendingList(custName);
		map1.put("list1", list1);
		
		List<LoanApply> list2 = loanApplyService.viewApproveList(custName);
		map2.put("list2", list2);
		
		List<LoanApply> list3 = loanApplyService.viewRejectList(custName);
		map3.put("list3", list3);
		
		List<LoanApply> list4 = loanApplyService.viewRepaidList(custName);
		map4.put("list4", list4);
		
		return "my_loan_or_apply";
	}
	
	//loan-form
	@RequestMapping(value = "/loan-apply-form.htm")
	public String addLoanForm(LoanApply loanApply, ModelMap map, ModelMap map1, HttpSession s, HttpServletResponse ss) throws IOException {
		CustomerController.checkSession(s, ss);
		List<LoanTypeMaster> li = loanTypeMasterService.viewLoanType();
		
		map.put("loanApply", new LoanApply());
		map1.put("li", li);
		return "loan_apply_form";
	}
	
	//after-form-fill
	@RequestMapping(value = "/loan-apply.htm", method = RequestMethod.POST)
	public String addLoan(LoanApply loanApply, ModelMap map, HttpSession s) {
		
		String custName = ((Customer)s.getAttribute("customer")).getCustName();
		//System.out.println(custName);
	
		LoanTypeMaster loanTypeMaster = loanTypeMasterService.selectLoanType(loanApply.getLoanType());
		
		float roi = loanTypeMaster.getRateOfInt();
		//System.out.println("roi: "+roi);
		
		//calculation for extra four columns
		float loanAmount = loanApply.getAmount();
		float rateOfInterest = roi;
		float tenure = loanApply.getTenure();
		
		System.out.println(loanAmount + " " + rateOfInterest + " " + tenure  );
		
		float intRatePerMonth = rateOfInterest / ( 12 * 100 );
		float months = tenure * 12;
		float x = 1 + intRatePerMonth;
		float div = (float) Math.pow( x , months );
		
		float emi = loanAmount * intRatePerMonth * ( div / ( div - 1 )  ) ; 
		
		float monthlyInterest = loanAmount*intRatePerMonth;
		
		float payAmount = emi * months;	
		float totalInterest = payAmount - loanAmount;
		
		loanApply.setEmi(emi);
		loanApply.setMonthlyInterest(monthlyInterest);
		loanApply.setTotalInterest(totalInterest);
		loanApply.setPayAmount(payAmount);
		loanApply.setCustName(custName);
		loanApply.setStatus("Pending");
		loanApply.setRateOfInt(roi);
		loanApply.setApplyDate(new Date().toString());
		
		//System.out.println(loanApply.toString());

		loanApplyService.insertLoan(loanApply);
		map.put("loanApply", new LoanApply());
		return "redirect:my-loan-or-apply.htm";
	}
	
	@RequestMapping(value = "/admin-view-apply.htm")
	public String viewPending(LoanApply loanApply, ModelMap map1,  ModelMap map2, ModelMap map3, HttpSession s, HttpServletResponse ss) throws IOException {
		//String custName = ( (Customer)s.getAttribute("customer") ).getCustName() ; 
		//System.out.println("admin - view loan applic");
		//pending
		CustomerController.checkSession(s, ss);
		List<LoanApply> list1 = loanApplyService.viewAllPendingList();
		map1.put("list1", list1);			
		System.out.println(list1);
		//accept
		List<LoanApply> list2 = loanApplyService.viewAllApproveList();
		map2.put("list2", list2);
		System.out.println(list1);
		//reject
		List<LoanApply> list3 = loanApplyService.viewAllRejectList();
		map3.put("list3", list3);
		
	System.out.println(list1);
		return "admin_show_apply";
	}
	
	
	@RequestMapping(value = "/view-loan-apply-details.htm")
	public String viewLoanApplyDet(@RequestParam int id, LoanApply loanApply, ModelMap map, HttpSession s) {
		
		System.out.println(id);
		LoanApply ld = loanApplyService.viewApplyByName(id);
		//System.out.println("from contro " + ld.toString());
		map.put("loanDetails", ld );		
		return "view_apply_details";
	}	

	//approve loan
	@RequestMapping(value = "/approve-loan.htm")
	public String approveLoan(@RequestParam int id, LoanApply loanApply, ModelMap map, HttpSession s) {
		
		LoanApply la = loanApplyService.viewApplyByName(id);
		
		la.setStatus("Approved");
		
		System.out.println(la.toString());
		
		loanApplyService.modifyLoanStatus(la);
		//map.put("list", list);
		System.out.println("updation done");
		return "redirect:admin-view-apply.htm";
	}	
	
	//reject loan
	@RequestMapping(value = "/reject-loan.htm")
	public String rejectLoan(@RequestParam int id, LoanApply loanApply, ModelMap map, HttpSession s) {
		
		LoanApply la = loanApplyService.viewApplyByName(id);
		
		la.setStatus("Rejected");
		
		System.out.println(la.toString());
		
		loanApplyService.modifyLoanStatus(la);
		//map.put("list", list);
		System.out.println("updation done");
		return "redirect:admin-view-apply.htm";
	}	
	
	//show loan details
	@RequestMapping(value = "/show-loan-details.htm")
	public String showLoanDetails(@RequestParam int id, LoanApply loanApply, ModelMap map, HttpSession s) {
		
		System.out.println(id);
		LoanApply ld = loanApplyService.viewApplyByName(id);
		//System.out.println("from contro " + ld.toString());
		map.put("loanDetails", ld );		
		return "show_loan_details";
	}	
	
	
	//update installment 
	@RequestMapping(value = "/pay-installment.htm")
	public String updateInstallment(@RequestParam int id, LoanApply loanApply, ModelMap map, HttpSession s) {
		System.out.println("id " + id);
		LoanApply la = loanApplyService.viewApplyByName(id);
		
		float emi = la.getEmi();
		float payAmount = la.getPayAmount();
		
		payAmount -= emi;
		
		if(payAmount > 0) {
		
			la.setPayAmount(payAmount);
		
			System.out.println(la.toString());
			
			loanApplyService.modifyInstallment(la);
			//map.put("list", list);
			System.out.println("updation done");
			return "success";
		}
		else {
			la.setStatus("Repaid");
			la.setPayAmount(0);
			
			System.out.println(la.toString());
			
			loanApplyService.modifyInstallment(la);
			//map.put("list", list);
			System.out.println("updation done");
			return "redirect:my-loan-or-apply.htm";
		}		
	}
	
	//admin view loan status
	@RequestMapping(value = "/admin-view-loan-status.htm")
	public String adminViewLoanStatus(LoanApply loanApply, ModelMap map1, ModelMap map2, HttpSession s, HttpServletResponse ss) throws IOException {
		//String custName = ( (Customer)s.getAttribute("customer") ).getCustName() ; 
		CustomerController.checkSession(s, ss);
		
		List<LoanApply> list1 = loanApplyService.viewAllApproveList();
		map1.put("list1", list1);
		System.out.println(list1);
		
		List<LoanApply> list2 = loanApplyService.viewAllRepaidList();;
		map2.put("list2", list2);
		
		return "admin_loan_status";
	}
	
	//view-loan-status.htm
	@RequestMapping(value = "/view-loan-status.htm")
	public String viewLoanStatus(@RequestParam int id, LoanApply loanApply, ModelMap map, HttpSession s) {
		
		System.out.println(id);
		LoanApply ld = loanApplyService.viewApplyByName(id);
		//System.out.println("from contro " + ld.toString());
		map.put("loanDetails", ld );		
		return "view_loan_status";
	}		
	
}
