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
import pojo.*;

public class DoctorDaoImpl implements DoctorDao{
	public boolean save(Doctor doctor){               //保存医生
		
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
	public Queue<Doctor> getDoctorFreeList(){        //得到一个空闲医生的排序
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
	public boolean update(Doctor doctor){               //修改医生状态
		
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
	public boolean doctorWork(Doctor doctor){           //医生进入工作状态
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
		    	System.out.println("session 为空");
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
	public boolean deleteWorkDoctor(Doctor doctor) {    //删除正在工作的医生
		
		Session session =null;
		Transaction trans = null;
		boolean result = false;
		SortDoctor sortDoctor = null;
		try{
			
		  Configuration cf = new Configuration().configure();
		  SessionFactory sf= cf.buildSessionFactory();
		  session = sf.openSession();
		    if(session == null){
		    	System.out.println("session 为空");
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
	public List<Doctor> getDepartmentDoctor(String departmentName) {      //得到那个科室的全部医生
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
	public List<Receipt> getTheReceiptsForDocotor(String doctorId) {      //得到医生已经看完的挂号单
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
	@Override
	//显示在线医生
	public List<Doctor> displayOnlineDoc() {
		// TODO Auto-generated method stub
		List<Doctor> list = new ArrayList<Doctor>();
		Session session = null;
		Transaction trans = null;
		try{
			Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  session = sf.openSession();
			  
			  trans = session.beginTransaction();
			  //获取在线医生的列表，state 1 表示医生在线， 0 表示离线
			  list = (List<Doctor>) session.createQuery("from Doctor doc where doc.state = ?").setParameter(0, 1).list();
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}
	@Override
	//设置医生的排班信息，由管理员维护更新
	public boolean setDoctorSchedule(String did, int date, int time,int limit) {
		// TODO Auto-generated method stub
		Session session =null;
		Transaction trans =null;
		 boolean result =false;
		 try{
				Configuration cf = new Configuration().configure();
				  SessionFactory sf= cf.buildSessionFactory();
				  session = sf.openSession();
				  trans = session.beginTransaction();
				  Doctor doc = (Doctor) session.load(Doctor.class, did);
				  Schedule schedule = new Schedule();
				  schedule.setDoctor(doc);
				  schedule.setDate(date);//设置医生排班的星期信息
				  schedule.setTime(time);//设置医生排班上午下午信息
				  schedule.setLimit(limit);//设置医生当前接诊上限，由管理员维护
				  session.save(schedule);
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
	//设置科室的排班信息，由管理员维护更新
	public boolean setDepartmentSchedule(int departmentid, int date, int time,int limit) {
		// TODO Auto-generated method stub
		Session session =null;
		Transaction trans =null;
		 boolean result =false;
		 try{
				Configuration cf = new Configuration().configure();
				  SessionFactory sf= cf.buildSessionFactory();
				  session = sf.openSession();
				  trans = session.beginTransaction();
				  Department depart = (Department) session.load(Department.class, departmentid);
				  Schedule schedule = new Schedule();
				  schedule.setDepartment(depart);
				  schedule.setDate(date);//设置科室排班的星期信息
				  schedule.setTime(time);//设置科室排班上午下午信息
				  schedule.setLimit(limit);//设置科室当前接诊上限，由管理员维护
				  session.save(schedule);
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
	//获取科室下的对应的普通医生或专家医生列表,0表示普通医生，1表示专家医生
	public List<Doctor> getAccordingDoctors(int type, int departmentid) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction trans = null;
		List<Doctor> list = new ArrayList<Doctor>();
		try{
			Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  session = sf.openSession();
			  trans = session.beginTransaction();
			  Department depart = (Department) session.load(Department.class, departmentid);
			  list = (List<Doctor>) session.createQuery("from Doctor doc where doc.department.departmentId=? and doc.type =?")
					  .setParameter(0, departmentid)
					  .setParameter(1, type).list();
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
    	
}