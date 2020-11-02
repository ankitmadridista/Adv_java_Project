package com.cdac.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.CustomerDao;
import com.cdac.dto.Customer;

@Service
public class CustomerServiceImple implements CustomerService {

	@Autowired
	private CustomerDao customerDao;
	
	@Override
	public void insertCustomer(Customer customer) {
		customerDao.addCustomer(customer);
	}

	@Override
	public boolean chkCustomer(Customer customer) {		
		return customerDao.checkCustomer(customer);
	}

}
