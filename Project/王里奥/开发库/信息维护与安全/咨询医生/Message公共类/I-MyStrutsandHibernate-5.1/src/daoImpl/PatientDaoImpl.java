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

import pojo.ActivateList;
import pojo.Department;
import pojo.Doctor;
import pojo.Patient;
import pojo.Receipt;
import pojo.Schedule;
import dao.PatientDao;

public class PatientDaoImpl implements PatientDao{
	public boolean save(Patient patient){            //���没��
		
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
	public boolean creatReceipts(Patient patient){   //�Һ�
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
		    	System.out.println("session Ϊ��");
		    }

			trans = session.beginTransaction();
			receipts=patient.getReceipts();
			
			//�����µĹҺŵ�
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
	public boolean updatePatient(Patient patient){               //�޸Ĳ���
		
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
	public boolean activateL(Receipt receipt){           //��������

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
		    	System.out.println("session Ϊ��");
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
	public Receipt activateToReceipt(ActivateList activateList){           //����activateList�õ��Һŵ�
		Receipt receipt = null;
		Session session =null;
		Transaction trans = null;
		
		try{
			
			  Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  activateList = new ActivateList();
			  session = sf.openSession();
			    if(session == null){
			    	System.out.println("session Ϊ��");
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
	public boolean deleteActivate(ActivateList activateList) {      //ɾ���Ѿ�����Ľкŵ�
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
	public Queue<ActivateList> getActivateLists() {             //�õ�һ�����˵�����
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
	@Override
	//
	public List<Receipt> getReceiptAll(String pid) {
		// TODO Auto-generated method stub
		
		List<Receipt> list = new ArrayList<Receipt>();
		Session session =null;
		Transaction trans =null;
		try{
			Configuration cf = new Configuration().configure();
			SessionFactory sf = cf.buildSessionFactory();
			session = sf.openSession();
			
			trans = session.beginTransaction();
			list = (List<Receipt>) session.createQuery("From Receipt rec where rec.patient.id = ?").setParameter(0, pid).list();
			
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
		
		return list;
	}
	@Override
   //֧������
	public boolean payReceipt(int rid) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction trans = null;
		Receipt rec =null;
		boolean pay = false;
		try{
			Configuration cf = new Configuration().configure();
			SessionFactory sf = cf.buildSessionFactory();
			session = sf.openSession();
			trans = session.beginTransaction();
			rec = (Receipt) session.load(Receipt.class, rid);
			Patient patient = rec.getPatient();
			//----------------------------���п۷Ѵ���--------------------------------
			float cost = rec.getCost();
			pay = updateMoney(patient.getId(), cost);
			if(pay == true){
				rec.setState(1);
				session.update(rec);
				trans.commit();
				return pay;
			}else{
				System.out.println("�Բ������ö�Ȳ��������ֵ����һ�Σ�");
				return pay;
			}
				
	       //--------------------------------------------------------------------
		}catch(Exception e){
			e.printStackTrace();
			trans.rollback();
			pay = false;
			
		}finally{
			session.close();
		}
		return pay;
	}
	//��������
	public boolean generateReceipt(String pid, String did, int departmentid) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction trans = null;
		boolean generate = false;
		try{
			Configuration cf = new Configuration().configure();
			SessionFactory sf = cf.buildSessionFactory();
			session = sf.openSession();
			trans = session.beginTransaction();
			if(did == null || did.equals(null)){
				//û��ѡҽ����Ϊ��ͨ��
				Receipt receipt = new Receipt();
				//���㶩���ļ۸�
				Department department =(Department) session.load(Department.class, departmentid);
				receipt.setCost(department.getCommoncost()); 
				receipt.setDatetime(new Date());
				Patient patient =(Patient)session.load(Patient.class, pid);
				receipt.setDepartment(department);
			    receipt.setPatient(patient);
			    receipt.setState(0);//0��ʾδ֧��
			    session.save(receipt);	
			    trans.commit();
			    generate = true;
				
			}else{
				//Ϊר�Һ�
				Receipt receipt = new Receipt();
				Department department =(Department) session.load(Department.class, departmentid);
				Doctor doctor =(Doctor)session.load(Doctor.class, did);
				receipt.setCost(doctor.getSpecialcost()); //
				//receipt.setDatetime(new Date());//�������������⣡��������
				Patient patient =(Patient)session.load(Patient.class, pid);
				receipt.setDepartment(department);
			    receipt.setPatient(patient);
			    receipt.setDoctor(doctor);
			    receipt.setState(0);//0��ʾδ֧��d
			    session.save(receipt);	
			    trans.commit();
			    generate = true;
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
			trans.rollback();
			generate = false;
			
		}finally{
			session.close();
		}
		
		return generate;
		
	}
	@Override
	//��ȡ���еĿ���
	public List<Department> getDepartmentAll() {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction trans = null;
		List<Department> list = new ArrayList<Department>();
		try{
			Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  session = sf.openSession();
			  trans = session.beginTransaction();
			  list = (List<Department>) session.createQuery("from Department").list();
			  trans.commit();
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
			e.getMessage();
		}finally{
			session.close();
		}
		return list;
	}
	@Override
	//�û���ֵ���ö�ȣ��ɹ���Ա����
	public boolean addMoney(String pid,Float amount) {
		// TODO Auto-generated method stub
		Session session =null;
		Transaction trans = null;
		boolean result = false;
		try{
			Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  session = sf.openSession();
			  trans = session.beginTransaction();
			  Patient patient =(Patient) session.load(Patient.class, pid);
			  float currentMoney = patient.getMoney();
			  patient.setMoney(currentMoney+amount);
			  session.update(patient);
			  trans.commit();
			  result = true;
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
			e.getMessage();
			result = false;
		}finally{
			session.close();
		}
		return result;
	}
	@Override
	//�û��������ö��
	public boolean updateMoney(String pid,Float amount) {
		// TODO Auto-generated method stub
		Session session =null;
		Transaction trans = null;
		boolean result = false;
		try{
			Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  session = sf.openSession();
			  trans = session.beginTransaction();
			  Patient patient =(Patient) session.load(Patient.class, pid);
			  float currentMoney = patient.getMoney();
			  //�ж��ܹ�����
			  if(currentMoney < amount){
				  return false;//�޷�����
			  }else{
				  patient.setMoney(currentMoney-amount);
				  session.update(patient);
				  trans.commit();
				  result = true; 
			  }
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
			e.getMessage();
			result = false;
		}finally{
			session.close();
		}
		return result;
	}
}