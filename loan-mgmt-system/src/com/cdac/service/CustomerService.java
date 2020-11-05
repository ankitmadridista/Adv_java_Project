package com.cdac.service;

import com.cdac.dto.Customer;

public interface CustomerService {
	public void insertCustomer(Customer customer);
	public boolean chkCustomer(Customer customer);
	String forgotPassword(String userName);
}
