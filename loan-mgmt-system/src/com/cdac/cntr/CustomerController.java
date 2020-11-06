package com.cdac.cntr;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Customer;
import com.cdac.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	@Autowired
	private MailSender mailSender;
	
	
	//open-reg-form
	@RequestMapping(value = "/cust-reg-form.htm")
	public String addCustForm( ModelMap map, HttpSession session, HttpServletResponse s) {
		
		map.put("customer", new Customer());
		return "reg_form";
	}
	//submit-reg-form
	@RequestMapping(value = "/cust-reg.htm")
	public String addCust(Customer customer, ModelMap map) {
		
		boolean flag = customerService.chkEmail(customer);
		
		if( flag == true) {
			customerService.insertCustomer(customer);
		}
		else {
			return "error404";
		}
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
		if(customer.getCustEmail().equals("admin@gmail.com") && customer.getCustPass().equals("admin") ) {
			s.setAttribute("admin", customer);
			System.out.println(s.getAttribute("admin"));
			return "admin_home";
		}
		//other-customer
		else if( customerService.chkCustomer(customer) ) {
			s.setAttribute("customer", customer);
			System.out.println(s.getAttribute("customer"));
			return "home";
		}else {
			map.put("customer", new Customer());
			return "log_form";
		}
		
	}
	
	
	@RequestMapping(value = "/admin-home.htm")
	public String adminHome(Customer customer, ModelMap map, HttpSession s, HttpServletResponse r) throws IOException {
		
		CustomerController.checkSession(s, r);
			return "admin_home";
			
	}
		
	@RequestMapping(value = "/emi-calc-form.htm")
	public String emiCalcForm( ModelMap map, HttpSession s, HttpServletResponse r) throws IOException {
		CustomerController.checkSession(s, r);
//		map.put("customer", new Customer());
		return "emi_calc_form";
	}
	
	//logout
	@RequestMapping(value = "/logout.htm")
	public String logout(HttpSession session, HttpServletResponse response) throws IOException {
		
		session.invalidate();
		response.sendRedirect("./");
		return null;
	}
	
	public static void checkSession(HttpSession hs,HttpServletResponse r) throws IOException {
		Object s = (Object) hs.getAttribute("admin");
		Object s1 = (Object) hs.getAttribute("customer");
		
		if(s == null && s1 == null) {
			System.out.println("session fail");
			r.sendRedirect("./");	
		}

		System.out.println("session pass");
	}
	
//	//Error
//		@RequestMapping("/*")
//		public String error() {
//			
//			return "error404";	
//		}
	
	//home
	@RequestMapping(value = "/home.htm")
	public String home( ModelMap map, HttpSession s, HttpServletResponse r) throws IOException {
		
		System.out.println("in home controller");
		
			return "home"; 	
	}
	
	
	//admin home
		@RequestMapping(value = "/admin-home.htm")
		public String adminHome( ModelMap map, HttpSession s, HttpServletResponse r) throws IOException {
		
			return "admin_home"; 
	
		}
	
	
	
	
	//forgot password
	@RequestMapping(value = "/forgot-password.htm",method = RequestMethod.POST)
	public String forgotPassword(@RequestParam String userName,ModelMap map) {		
		String pass = customerService.forgotPassword(userName);
		String msg = "You are not registered";
		if(pass!=null) {	
			
			SimpleMailMessage message = new SimpleMailMessage();  
	        message.setFrom("ajava2848@gmail.com");  
	        message.setTo(userName);  
	        message.setSubject("Your password");  
	        message.setText(pass);  
	        //sending message   
	        mailSender.send(message);
			msg = "Check the mail for password";
		}
		map.put("msg", msg);
		return "info";
	}
	
	
		
}
