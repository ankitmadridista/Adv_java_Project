package com.cdac.dao;

import com.cdac.dto.Customer;

public interface CustomerDao {
	//registration
	public void addCustomer(Customer customer);
	//validation login
	public boolean checkCustomer(Customer customer);
}
