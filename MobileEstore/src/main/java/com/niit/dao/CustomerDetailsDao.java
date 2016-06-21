/*package com.niit.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.niit.bean.CustomerDetails;

public class CustomerDetailsDao {

	public static void main(String[] args) {
		
		 public void addCustDetails(String custName, String custID) {
		        try {
		            // 1. configuring hibernate
		            Configuration configuration = new Configuration().configure();
		 
		            // 2. create sessionfactory
		            SessionFactory sessionFactory = configuration.buildSessionFactory();
		 
		            // 3. Get Session object
		            Session session = sessionFactory.openSession();
		 
		            // 4. Starting Transaction
		            Transaction transaction = session.beginTransaction();
		            CustomerDetails cust= new CustomerDetails();
		            cust.setCustID(custID);
		            cust.setCustName(custName);
		            
		            session.save(cust);
		            transaction.commit();
		            System.out.println("\n\n Details Added \n");
		 
		        } 
		        catch (HibernateException e) 
		        {
		            System.out.println(e.getMessage());
		            System.out.println("error");
		        }
		
			}
}
}*/
