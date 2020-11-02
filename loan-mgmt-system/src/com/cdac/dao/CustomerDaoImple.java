package com.cdac.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.Customer;

@Repository
public class CustomerDaoImple implements CustomerDao {

	@Autowired
	private HibernateTemplate ht;
	
	@Override
	public void addCustomer(Customer customer) {
		ht.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				customer.setRegDate(new Date().toString());
					session.save(customer);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}

	@Override
	public boolean checkCustomer(Customer customer) {
		return ht.execute(new HibernateCallback<Boolean>() {

			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				
				Query q = session.createQuery("from Customer where custEmail = ? and custPass = ?");
				q.setString(0, customer.getCustEmail());
				q.setString(1, customer.getCustPass());
								
				List<Customer> li = q.list();
				
//				if( customer.getCustEmail().equals("admin") ) {
//					
//				}
				
				boolean flag = !li.isEmpty();//ok user ==> true or flase
				if( flag == true) {
					customer.setCustId(li.get(0).getCustId());
					customer.setCustName(li.get(0).getCustName());
					customer.setMobileNo(li.get(0).getMobileNo());
					customer.setPanNo(li.get(0).getPanNo());
					customer.setAdharNo(li.get(0).getPanNo());
					customer.setAddress(li.get(0).getAddress());
					customer.setDateOfBirth(li.get(0).getDateOfBirth());
					customer.setRegDate(li.get(0).getRegDate());
					
					System.out.println("custId: " + customer.getCustId());
					System.out.println("data added");
				}
				tr.commit();
				
				session.flush();
				session.close();
				return flag;
			}
		});
	}
}
