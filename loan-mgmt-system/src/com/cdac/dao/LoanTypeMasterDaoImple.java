package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.LoanTypeMaster;
@Repository
public class LoanTypeMasterDaoImple implements LoanTypeMasterDao {
	@Autowired
	private HibernateTemplate ht;
	
	@Override
	public void addLoanType(LoanTypeMaster loanTypeMaster) {
		ht.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				session.save(loanTypeMaster);				
				tr.commit();
				session.flush();
				session.close();				
				return null;
			}
		});		
	}

	@Override
	public List<LoanTypeMaster> showLoanType() {
		return ht.execute(new HibernateCallback<List<LoanTypeMaster>>() {

			@Override
			public List<LoanTypeMaster> doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from LoanTypeMaster");
				List<LoanTypeMaster> li =  q.list();
				
				tr.commit();
				session.flush();
				session.close();				
				return li;
			}
		});		
	}

	@Override
	public LoanTypeMaster findLoanType(String loanType) {
		return ht.execute(new HibernateCallback<LoanTypeMaster>() {

			@Override
			public LoanTypeMaster doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from LoanTypeMaster where loanType = ?");
				q.setString(0, loanType);
				List<LoanTypeMaster> li =  q.list();
				
				tr.commit();
				session.flush();
				session.close();				
				return li.get(0);
			}
		});		
	}

}
