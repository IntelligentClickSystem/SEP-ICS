package test;
import java.util.List;

import javassist.bytecode.Descriptor.Iterator;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import dao.*;
import daoImpl.*;
import pojo.*;
public class TestReceipt {
	
	
	public static void main(String[] args){
		Session session =null;
		Transaction trans =null;
//		try{
//			Configuration cf = new Configuration().configure();
//			SessionFactory sf = cf.buildSessionFactory();
//			session = sf.openSession();
//			trans = session.beginTransaction();
//			for(int i = 0; i < 10; i++){
//				Department department = new Department();
//				department.setDepartmentName("科室"+ i);
//				session.save(department);
//				for(int j = 0; j <10 ; j++){
//					Doctor doctor = new Doctor();
//					doctor.setId("test"+i + j);
//					doctor.setPassword("000");
//					doctor.setName("科室" + i + "的医生"+ j);
//					doctor.setDepartment(department);
//					session.save(doctor);
//				}
//			}
//			
//			for(int j = 0; j <10; j++){
//				Patient patient = new Patient();
//				patient.setId("test"+ j);
//				patient.setPassword("000");
//				patient.setName("test"+j);
//				session.save(patient);
//			}
//			trans.commit();
//		}catch(Exception e){
//			e.printStackTrace();
//		    e.getMessage();//打印出错误堆栈信息
//			trans.rollback();
//			
//		}finally{
//			session.close();
//		}
		//测试代码
		//产生订单
		PatientDao pdao = new PatientDaoImpl();
		DoctorDao ddao =new DoctorDaoImpl();
		/*for(int i =0; i <3; i++){
			Boolean generate = pdao.generateReceipt("test0", "test00", 3);
			System.out.println(generate);
		}*/
		
		//获取所有订单
//		List<Receipt> list = pdao.getReceiptAll("test0");
//		System.out.println(list);
//		
//		//支付订单
//		Boolean pay = pdao.payReceipt(1);
//		System.out.println(pay);
//		 //获取医生对应
//		
		List<Doctor> list2 =ddao.getAccordingDoctors(1, 1);
		for(Doctor doctor: list2){
			System.out.println(doctor.getId());
		}
		
		
	}

}
