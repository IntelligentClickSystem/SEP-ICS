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
//				department.setDepartmentName("����"+ i);
//				session.save(department);
//				for(int j = 0; j <10 ; j++){
//					Doctor doctor = new Doctor();
//					doctor.setId("test"+i + j);
//					doctor.setPassword("000");
//					doctor.setName("����" + i + "��ҽ��"+ j);
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
//		    e.getMessage();//��ӡ�������ջ��Ϣ
//			trans.rollback();
//			
//		}finally{
//			session.close();
//		}
		//���Դ���
		//��������
		PatientDao pdao = new PatientDaoImpl();
		DoctorDao ddao =new DoctorDaoImpl();
		/*for(int i =0; i <3; i++){
			Boolean generate = pdao.generateReceipt("test0", "test00", 3);
			System.out.println(generate);
		}*/
		
		//��ȡ���ж���
//		List<Receipt> list = pdao.getReceiptAll("test0");
//		System.out.println(list);
//		
//		//֧������
//		Boolean pay = pdao.payReceipt(1);
//		System.out.println(pay);
//		 //��ȡҽ����Ӧ
//		
		List<Doctor> list2 =ddao.getAccordingDoctors(1, 1);
		for(Doctor doctor: list2){
			System.out.println(doctor.getId());
		}
		
		
	}

}
