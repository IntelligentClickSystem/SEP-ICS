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
   //支付订单
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
			//----------------------------进行扣费处理--------------------------------
			float cost = rec.getCost();
			pay = updateMoney(patient.getId(), cost);
			if(pay == true){
				rec.setState(1);
				session.update(rec);
				trans.commit();
				return pay;
			}else{
				System.out.println("对不起信用额度不够，请充值在试一次！");
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
	//产生订单
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
				//没有选医生，为普通号
				Receipt receipt = new Receipt();
				//计算订单的价格
				Department department =(Department) session.load(Department.class, departmentid);
				receipt.setCost(department.getCommoncost()); 
				receipt.setDatetime(new Date());
				Patient patient =(Patient)session.load(Patient.class, pid);
				receipt.setDepartment(department);
			    receipt.setPatient(patient);
			    receipt.setState(0);//0表示未支付
			    session.save(receipt);	
			    trans.commit();
			    generate = true;
				
			}else{
				//为专家号
				Receipt receipt = new Receipt();
				Department department =(Department) session.load(Department.class, departmentid);
				Doctor doctor =(Doctor)session.load(Doctor.class, did);
				receipt.setCost(doctor.getSpecialcost()); //
				//receipt.setDatetime(new Date());//设置日期有问题！！！！！
				Patient patient =(Patient)session.load(Patient.class, pid);
				receipt.setDepartment(department);
			    receipt.setPatient(patient);
			    receipt.setDoctor(doctor);
			    receipt.setState(0);//0表示未支付d
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
	//获取所有的科室
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
	//用户充值信用额度，由管理员管理
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
	//用户消费信用额度
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
			  //判断能够消费
			  if(currentMoney < amount){
				  return false;//无法消费
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