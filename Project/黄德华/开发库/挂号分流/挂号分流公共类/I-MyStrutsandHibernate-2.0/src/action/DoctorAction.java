package action;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Set;

import pojo.ActivateList;
import pojo.Doctor;
import pojo.Receipt;

import com.opensymphony.xwork2.ActionSupport;

import dao.DoctorDao;
import dao.PatientDao;
import daoImpl.DoctorDaoImpl;
import daoImpl.PatientDaoImpl;

public class DoctorAction extends ActionSupport{
	Queue<Doctor> queue = new LinkedList<Doctor>();
	Queue<ActivateList> queue_A = new LinkedList<ActivateList>();
	
	//���ҽ���б��еĿ���ҽ���Ķ���
	public void setDoctorqueue(){
		DoctorDao doctorDao = new DoctorDaoImpl();
		this.queue = doctorDao.getDoctorFreeList();
	}
	//���ҽ���б��еĿ���ҽ���Ķ���
	public void setPatientqueue(){
		PatientDao patientDao = new PatientDaoImpl();
		this.queue_A = patientDao.getActivateLists();
	}	
	//����ҽ������
	public void shunt(ActivateList activateList){
		Doctor doctor = null;             //���������ȡ���ĸ�ҽ���ӵ�
		Receipt receipt = null;           //���������Ϊ�˵õ��������˵ĹҺŵ�
		setDoctorqueue();                 //�õ�����ҽ������
		Set<Receipt> receipts = new HashSet<Receipt>();    //�õ�ҽ���Ѿ�������ĹҺŵ�
		DoctorDao doctorDao = new DoctorDaoImpl();
		PatientDao patientDao = new PatientDaoImpl();
		if(queue.isEmpty()==true){        //û�п���ҽ��
			setPatientqueue();            //û�п���ҽ�������˿�ʼ�Ŷ�
		}else{
			doctor= queue.poll();         //��ֵ���õ����еĵ�һ��ҽ��
			receipt = patientDao.activateToReceipt(activateList); //�õ��Һŵ�
			receipts=doctor.getReceipts();
			receipts.add(receipt);
			doctor.setState(2);              //����ҽ������
			doctor.setReceipts(receipts);    //����ҽ���Һŵ� 
			patientDao.deleteActivate(activateList);     //ɾ���ýкŵ�����Ϊ�Ѿ���ʼ����
			doctorDao.deleteWorkDoctor(doctor);
			doctorDao.update(doctor);

		}
		
		
	}
	//��ɾ���
	public void finish(Doctor doctor){
		doctor.setState(1);                 //�ı�״̬
		DoctorDao doctorDao = new DoctorDaoImpl();
		doctorDao.doctorWork(doctor);
		setPatientqueue();
		ActivateList activateList = null;   //�õ���ǰ�ŵĽкŵ�
		if (queue_A.isEmpty()==false) {     //������˻������Ŷӣ�����ҽ�������ˣ���������
			activateList = queue_A.poll();
			shunt(activateList);              
		}
		
	}
}
