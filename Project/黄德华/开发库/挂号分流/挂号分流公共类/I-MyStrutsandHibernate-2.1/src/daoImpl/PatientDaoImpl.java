package daoImpl;

import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import pojo.ActivateList;
import pojo.Department;
import pojo.Doctor;
import pojo.Patient;
import pojo.Receipt;
import dao.PatientDao;

public class PatientDaoImpl implements PatientDao{
	public boolean save(Patient patient){            //保存病人
		
		Session session =null;
		Transaction trans = null;
		boolean result = false;
		try{
			
		  Configuration cf = new Configuration().configure();
		  SessionFactory sf= cf.buildSessionFactory();
		  session = sf.openSession();
		    if(session == null){
		    	System.out.println("session 为空");
		    }

			trans = session.beginTransaction();
			session.save(patient);
			result = true;
			trans.commit();
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
		}finally{
			session.close();
			
		}
		
		return result;
	}
	public boolean creatReceipts(Patient patient){   //挂号
		Session session =null;
		Transaction trans = null;
		boolean result = false;
		Set<Receipt> receipts = new HashSet<Receipt>();
		Receipt newReceipts = null;
		try{
			
		  Configuration cf = new Configuration().configure();
		  SessionFactory sf= cf.buildSessionFactory();
		  session = sf.openSession();
		    if(session == null){
		    	System.out.println("session 为空");
		    }

			trans = session.beginTransaction();
			receipts=patient.getReceipts();
			
			//创建新的挂号单
			newReceipts=new Receipt();
			session.save(newReceipts);
			
			receipts=patient.getReceipts();
			receipts.add(newReceipts);
			patient.setReceipts(receipts);
			
			session.update(patient);
			result = true;
			trans.commit();
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
		}finally{
			session.close();
			
		}
		
		return result;
	}
	public boolean updatePatient(Patient patient){               //修改病人
		
		Session session =null;
		Transaction trans = null;
		boolean result = false;
		try{
			
		  Configuration cf = new Configuration().configure();
		  SessionFactory sf= cf.buildSessionFactory();
		  session = sf.openSession();
		    if(session == null){
		    	System.out.println("session 为空");
		    }

			trans = session.beginTransaction();
			session.update(patient);
			result = true;
			trans.commit();
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
		}finally{
			session.close();
			
		}
		
		return result;
	}
	public boolean activateL(Receipt receipt){           //过来就诊

		Session session =null;
		Transaction trans = null;
		ActivateList activateList = null;
		boolean result = false;
		try{
			
		  Configuration cf = new Configuration().configure();
		  SessionFactory sf= cf.buildSessionFactory();
		  activateList = new ActivateList();
		  session = sf.openSession();
		    if(session == null){
		    	System.out.println("session 为空");
		    }
            
		    trans = session.beginTransaction();
		    
		    Date datetime = new Date();
		    activateList.setReceipt(receipt);
		    activateList.setDatetime(datetime.getTime());
		    
		    session.save(activateList);
			
			result = true;
			trans.commit();
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
		}finally{
			session.close();
			
		}
		
		return result;
	}
	public Receipt activateToReceipt(ActivateList activateList){           //根据activateList得到挂号单
		Receipt receipt = null;
		Session session =null;
		Transaction trans = null;
		
		try{
			
			  Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  activateList = new ActivateList();
			  session = sf.openSession();
			    if(session == null){
			    	System.out.println("session 为空");
			    }

			    trans = session.beginTransaction();
	            receipt = activateList.getReceipt();
				
				trans.commit();
			}catch(Exception e){
				trans.rollback();
				e.printStackTrace();
			}finally{
				session.close();
				
			}
		return receipt;
	}
	public boolean deleteActivate(ActivateList activateList) {      //删除已经接诊的叫号单
		Session session =null;
		Transaction trans = null;
		boolean result = false;
		try{
			
		  Configuration cf = new Configuration().configure();
		  SessionFactory sf= cf.buildSessionFactory();
		  session = sf.openSession();
		    if(session == null){
		    	System.out.println("session 为空");
		    }
            
		    trans = session.beginTransaction();
		    session.delete(activateList);
			
			result = true;
			trans.commit();
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
		}finally{
			session.close();
			
		}
		
		return result;
	}
	public Queue<ActivateList> getActivateLists() {             //得到一个病人的排序
		Queue<ActivateList> queue = new LinkedList<ActivateList>();
		Session session =null;
		Transaction trans = null;
		try{
			
			  Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  session = sf.openSession();
			  
			  trans = session.beginTransaction();
			  queue = (Queue<ActivateList>) session.createQuery("from ActivateList s order by s.datetime asc");

			  trans.commit();
		      return queue;
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}

		return queue;
	}
	public Patient getPatientOfReceipt(int recepitId) {        //得到相关的Receipt
	    
		Session session =null;
		Transaction trans = null;
		Receipt receipt = new Receipt();
		Patient patient = new Patient();
		try{
			
			  Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  session = sf.openSession();
			  
			  trans = session.beginTransaction();
			  receipt = (Receipt) session.get(Receipt.class, recepitId);
			  patient = receipt.getPatient();
			  
			  trans.commit();
		      return patient;
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
		return patient;
	}
}