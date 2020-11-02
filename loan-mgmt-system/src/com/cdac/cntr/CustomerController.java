package com.cdac.cntr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.dto.Customer;
import com.cdac.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	//open-reg-form
	@RequestMapping(value = "/cust-reg-form.htm")
	public String addCustForm( ModelMap map) {
		map.put("customer", new Customer());
		return "reg_form";
	}
	//submit-reg-form
	@RequestMapping(value = "/cust-reg.htm")
	public String addCust(Customer customer, ModelMap map) {
		customerService.insertCustomer(customer);
		map.put("customer", new Customer());
		return "index";
	}
	
	//login-form
	@RequestMapping(value = "/cust-log-form.htm")
	public String logCustForm( ModelMap map) {
		map.put("customer", new Customer());
		return "log_form";
	}
	
	@RequestMapping(value = "/cust-log.htm", method = RequestMethod.POST)
	public String chkCust(Customer customer, ModelMap map, HttpSession s) {
		//if-admin
		if(customer.getCustEmail().equals("admin") && customer.getCustPass().equals("admin") ) {
			s.setAttribute("admin", customer);
			return "admin_home";
		}
		//other-customer
		else if( customerService.chkCustomer(customer) ) {
			s.setAttribute("customer", customer);
//			System.out.println(s.getAttribute("customer"));
			return "home";
		}else {
			map.put("customer", new Customer());
			return "log_form";
		}
		
	}
	
	@RequestMapping(value = "/emi-calc-form.htm")
	public String emiCalcForm( ModelMap map) {
//		map.put("customer", new Customer());
		return "emi_calc_form";
	}

		
}
