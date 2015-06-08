package daoImpl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import pojo.Department;
import pojo.Doctor;
import pojo.Receipt;
import pojo.SortDoctor;
import dao.DoctorDao;

public class DoctorDaoImpl implements DoctorDao{
	public boolean save(Doctor doctor){               //����ҽ��
		
		Session session =null;
		Transaction trans = null;
		boolean result = false;
		try{
			
		  Configuration cf = new Configuration().configure();
		  SessionFactory sf= cf.buildSessionFactory();
		  session = sf.openSession();
		    if(session == null){
		    	System.out.println("session Ϊ��");
		    }

			trans = session.beginTransaction();
			session.save(doctor);
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
	public Queue<Doctor> getDoctorFreeList(){        //�õ�һ������ҽ��������
		Queue<Doctor> queue = new LinkedList<Doctor>();
		Session session =null;
		Transaction trans = null;
		try{
			
			  Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  session = sf.openSession();
			  
			  trans = session.beginTransaction();
			  queue = (Queue<Doctor>) session.createQuery("from SortDoctor s order by s.datetime asc");

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
	public boolean update(Doctor doctor){               //�޸�ҽ��״̬
		
		Session session =null;
		Transaction trans = null;
		boolean result = false;
		try{
			
		  Configuration cf = new Configuration().configure();
		  SessionFactory sf= cf.buildSessionFactory();
		  session = sf.openSession();
		    if(session == null){
		    	System.out.println("session Ϊ��");
		    }

			trans = session.beginTransaction();
			session.update(doctor);
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
	public boolean doctorWork(Doctor doctor){           //ҽ�����빤��״̬
		Session session =null;
		Transaction trans = null;
		SortDoctor sortDoctor = null;
		
		boolean result = false;
		try{
			
		  Configuration cf = new Configuration().configure();
		  SessionFactory sf= cf.buildSessionFactory();
		  sortDoctor = new SortDoctor();
		  session = sf.openSession();
		    if(session == null){
		    	System.out.println("session Ϊ��");
		    }
            
		    trans = session.beginTransaction();
		    
		    Date datetime = new Date();
		    sortDoctor.setDoctor(doctor);
		    sortDoctor.setDatetime(datetime.getTime());
		    
		    session.save(sortDoctor);
			
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
	public boolean deleteWorkDoctor(Doctor doctor) {    //ɾ�����ڹ�����ҽ��
		
		Session session =null;
		Transaction trans = null;
		boolean result = false;
		SortDoctor sortDoctor = null;
		try{
			
		  Configuration cf = new Configuration().configure();
		  SessionFactory sf= cf.buildSessionFactory();
		  session = sf.openSession();
		    if(session == null){
		    	System.out.println("session Ϊ��");
		    }
            
		    trans = session.beginTransaction();
		    
		    sortDoctor = (SortDoctor) session.get(SortDoctor.class, doctor.getId());
		    session.delete(sortDoctor);
			
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
	public List<Doctor> getDepartmentDoctor(String departmentName) {      //�õ��Ǹ����ҵ�ȫ��ҽ��
		Session session =null;
		Transaction trans = null;
		List<Doctor> list = new ArrayList<Doctor>();
		Department department = new Department();
		try{
			
			  Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  session = sf.openSession();
			  
			  trans = session.beginTransaction();
			  Set<Doctor> doctors = new HashSet<Doctor>();
			  department=(Department) session.get(Department.class, departmentName);
			  doctors = department.getDoctors();
			  for (Doctor doctor:doctors) {
				list.add(doctor);
			  }
			  
			  trans.commit();
		      return list;
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}

		return list;
	}
	public List<Receipt> getTheReceiptsForDocotor(String doctorId) {      //�õ�ҽ���Ѿ�����ĹҺŵ�
		Session session =null;
		Transaction trans = null;
		List<Receipt> list = new ArrayList<Receipt>();
		Doctor doctor = new Doctor();
		try{
			
			  Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  session = sf.openSession();
			  
			  trans = session.beginTransaction();
			  Set<Receipt> receipts = new HashSet<Receipt>();
			  doctor=(Doctor)session.get(Doctor.class, doctorId);
			  receipts = doctor.getReceipts();
			  for (Receipt receipt:receipts) {
				list.add(receipt);
			  }
			  
			  trans.commit();
		      return list;
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}

		return list;
	}
    	
}