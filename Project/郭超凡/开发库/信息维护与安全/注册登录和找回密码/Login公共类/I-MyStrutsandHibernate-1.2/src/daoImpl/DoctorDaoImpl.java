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
	@Override
	//��ʾ����ҽ��
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
			  //��ȡ����ҽ�����б�state 1 ��ʾҽ�����ߣ� 0 ��ʾ����
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
	//����ҽ�����Ű���Ϣ���ɹ���Աά������
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
				  schedule.setDate(date);//����ҽ���Ű��������Ϣ
				  schedule.setTime(time);//����ҽ���Ű�����������Ϣ
				  schedule.setLimit(limit);//����ҽ����ǰ�������ޣ��ɹ���Աά��
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
	//���ÿ��ҵ��Ű���Ϣ���ɹ���Աά������
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
				  schedule.setDate(date);//���ÿ����Ű��������Ϣ
				  schedule.setTime(time);//���ÿ����Ű�����������Ϣ
				  schedule.setLimit(limit);//���ÿ��ҵ�ǰ�������ޣ��ɹ���Աά��
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
	//��ȡ�����µĶ�Ӧ����ͨҽ����ר��ҽ���б�,0��ʾ��ͨҽ����1��ʾר��ҽ��,�õ���list���Ի�ȡҽ����id
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
	//��ʾ���ҵ��Ű���Ϣ������Ϊ���ұ��
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
	//��ʾҽ���Ű���Ϣ
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
	//����ҽ����id��ȡҽ����������ҽ������ҽ��ͷ��
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
			  info[0] = doctor.getName();//��ȡҽ������
			  info[1] = doctor.getIntroduction();//��ȡҽ�����
			  info[2] = doctor.getLevel();//��ȡҽ��ͷ��
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