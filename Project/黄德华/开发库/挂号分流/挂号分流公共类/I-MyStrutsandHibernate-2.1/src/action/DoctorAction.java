package action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;

import org.hibernate.mapping.Array;

import pojo.ActivateList;
import pojo.Department;
import pojo.Doctor;
import pojo.MyNewList;
import pojo.Patient;
import pojo.Receipt;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.jmx.remote.internal.ArrayQueue;

import dao.DoctorDao;
import dao.PatientDao;
import daoImpl.DoctorDaoImpl;
import daoImpl.PatientDaoImpl;

public class DoctorAction extends ActionSupport{
	Queue<Doctor> queue = new LinkedList<Doctor>();
	Queue<ActivateList> queue_A = new LinkedList<ActivateList>();
	//private List<Receipt> receiptslist = new LinkedList<Receipt>();
	//private List<Doctor> doctorList = new LinkedList<Doctor>();
    private Doctor doctor = new Doctor();
    // private Department department = new Department();
    //private List<Patient> patientlist;
    private List<MyNewList> myNewLists = new LinkedList<MyNewList>();
	
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

    //ʵ�ֽ�ҽ���ľ�����ɵ���Ϣ��ʾ��ǰ̨
	public String receiptsOfDoctor(){
		
		// 
		
		//doctor.setName("aaa");
		//Receipt r = new Receipt();
		Date date = new Date();
		MyNewList myNewList = new MyNewList();
		myNewList.setReceiptId(1212121);
		myNewList.setReceiptDate(LongToDate(date.getTime()));
		myNewList.setDepartmentNameString("ddddddd");
		myNewList.setPatientNameString("ssfsff");
		myNewList.setDoctorNameString("dsfsdfsdf");
		myNewList.setDoctorTypeString("dfsfdsfdsfdsf");
		myNewLists.add(myNewList);
		//setMyNewLists(getTheMyNewLists(getDoctor().getId()));
		if(this.myNewLists!=null){
			return SUCCESS;
		}
		return ERROR;
	
	}
	
	//ʵ�ֽ�ҽ���Ĵ��������Ϣ��ʾ��ǰ̨
	public String activateListOfDoctor(){
		//setMyNewLists(getTheActivateMyNewLists());
		Date date = new Date();
		MyNewList myNewList = new MyNewList();
		myNewList.setReceiptId(213321);
		myNewList.setReceiptDate(LongToDate(date.getTime()));
		myNewList.setDepartmentNameString("dddd312ddd");
		myNewList.setPatientNameString("ssf31221ff");
		myNewList.setDoctorNameString("dsfsd231231fsdf");
		myNewList.setDoctorTypeString("dfsfds3121312fdsfdsf");
		myNewLists.add(myNewList);
		if(this.myNewLists!=null){
			return SUCCESS;
		}
		return ERROR;
    }
	
	//�õ��Ѿ���ɵľ��ﵥ��
	public List<MyNewList> getTheMyNewLists(String doctorId) {     
    	List<MyNewList> list = new LinkedList<MyNewList>();
    	MyNewList myNewList = new MyNewList();
    	DoctorDao doctordao = new DoctorDaoImpl();
		PatientDao patientDao = new PatientDaoImpl();
		List<Receipt> receiptslist = new LinkedList<Receipt>();
		Department department = new Department();
		department = doctordao.getDepartmentOfDoctor(doctorId);
		receiptslist=doctordao.getTheReceiptsForDocotor(getDoctor().getId());
		for(Receipt receipt:receiptslist){
			myNewList.setReceiptId(receipt.getId());
			myNewList.setReceiptDate(LongToDate(receipt.getDate()));
			myNewList.setDepartmentNameString(department.getDepartmentName());
			myNewList.setPatientNameString(patientDao.getPatientOfReceipt(receipt.getId()).getName());
			myNewList.setDoctorNameString(getDoctor().getName());
			myNewList.setDoctorTypeString(getDoctor().getType());
			list.add(myNewList);
		}
		
		
		
		return list;
	}
    
  //�õ������ﵥ��
  	public List<MyNewList>getTheActivateMyNewLists(){            
      	List<MyNewList> list = new LinkedList<MyNewList>();
      	Queue<ActivateList> queue = new LinkedList<ActivateList>();
      	PatientDao patientDao = new PatientDaoImpl();
      	MyNewList myNewList = new MyNewList();
      	queue = patientDao.getActivateLists();
      	for (ActivateList activateList: queue) {
  	            myNewList.setReceiptId(activateList.getQueueId());
  	            myNewList.setReceiptDate(LongToDate(activateList.getDatetime()));
  	            myNewList.setDepartmentNameString(activateList.getReceipt().getDepartment().getDepartmentName());
  	            myNewList.setPatientNameString(activateList.getReceipt().getPatient().getName());
  	            myNewList.setDoctorNameString("");
  	            myNewList.setDoctorTypeString(activateList.getTypeName());
  	            list.add(myNewList);
  	        }
      	return list;
      }
	
  	public List<MyNewList> getMyNewLists() {
		return myNewLists;
	}
	
  	public void setMyNewLists(List<MyNewList> myNewLists) {
		this.myNewLists = myNewLists;
	}
	
  	public Doctor getDoctor() {
		return doctor;
	}
	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	public String LongToDate(long datetime){         //��long��ת����date
		Date date = new Date(datetime);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss"); 
		return sdf.format(date);
	}
	

	
}
