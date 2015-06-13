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
import pojo.Patient;
import pojo.Receipt;
import pojo.Schedule;
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
	//获取科室下的对应的普通医生或专家医生列表,0表示普通医生，1表示专家医生,得到的list可以获取医生的id
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
	@Override
	//显示科室的排班信息，参数为科室编号
	public List<Schedule> displaySchedule(int departmentid) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction trans = null;
		List<Schedule> list = new ArrayList<Schedule>();
		try{
			Configuration cf = new Configuration().configure();
			 SessionFactory sf= cf.buildSessionFactory();
			 session = sf.openSession();
			 trans = session.beginTransaction();
			 Department department = (Department) session.load(Department.class, departmentid);
			 list = (List<Schedule>) session.createQuery("from Schedule schedule where schedule.department.departmentId = ?")
					 .setParameter(0, departmentid).list();
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
	//显示医生排班信息
	public List<Schedule> displayDoctorSchedule(String did) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction trans = null;
		List<Schedule> list = new ArrayList<Schedule>();
		try{
			Configuration cf = new Configuration().configure();
			 SessionFactory sf= cf.buildSessionFactory();
			 session = sf.openSession();
			 trans = session.beginTransaction();
			 Doctor doctor = (Doctor) session.load(Doctor.class,did);
			 list = (List<Schedule>) session.createQuery("from Schedule schedule where schedule.doctor.id = ?")
					 .setParameter(0, did).list();
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
	//根据医生的id获取医生的姓名，医生简介和医生头衔
	public String[] getDoctorInfo(String did) {
		// TODO Auto-generated method stub
		Session session =null;
		Transaction trans = null;
		String[] info = new String[15];
		
		try{
			Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  session = sf.openSession();
			  trans = session.beginTransaction();
			  Doctor doctor =(Doctor) session.load(Doctor.class, did);
			  info[0] = doctor.getName();//获取医生姓名
			  info[1] = doctor.getIntroduction();//获取医生简介
			  info[2] = doctor.getLevel();//获取医生头衔
			  trans.commit();
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
			e.getMessage();
		}finally{
			session.close();
		}
		
		
		return info; 

	}
	@Override
	public boolean updateDoctorInfo(String did, String newLevel,
			int newType, String newPhone, String newEmail, String newIntro) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction trans = null;
		boolean result = false;
		try{
			Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  session = sf.openSession();
			  trans = session.beginTransaction();
			 Doctor doctor =(Doctor) session.load(Doctor.class, did);
			 doctor.setLevel(newLevel);
			 doctor.setType(newType);
			 doctor.setPhone(newPhone);
			 doctor.setEmail(newEmail);
			 doctor.setIntroduction(newIntro);
			 session.update(doctor);
			 result = true;
			  trans.commit();
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
			e.getMessage();
		}finally{
			session.close();
		}
		return result;
	}
	@Override
	public boolean updatePatientInfo(String pid, int age, String newPhone,
			String newAddress, String newEmail, String idcard) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction trans = null;
		boolean result = false;
		try{
			Configuration cf = new Configuration().configure();
			  SessionFactory sf= cf.buildSessionFactory();
			  session = sf.openSession();
			  trans = session.beginTransaction();
			  Patient patient = (Patient)session.load(Patient.class, pid);
			  patient.setAge(age);
			  patient.setPhone(newPhone);
			  patient.setAddress(newAddress);
			  patient.setEmail(newEmail);
			  patient.setIdcard(idcard);
			  session.update(patient);
			  result = true;
			  trans.commit();
		}catch(Exception e){
			trans.rollback();
			e.printStackTrace();
			e.getMessage();
		}finally{
			session.close();
		}
		return result;
	}
	
    	
}