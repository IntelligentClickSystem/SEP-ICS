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
	
	//获得医生列表中的空闲医生的队列
	public void setDoctorqueue(){
		DoctorDao doctorDao = new DoctorDaoImpl();
		this.queue = doctorDao.getDoctorFreeList();
	}
	
	//获得医生列表中的空闲医生的队列
	public void setPatientqueue(){
		PatientDao patientDao = new PatientDaoImpl();
		this.queue_A = patientDao.getActivateLists();
	}	
	
	//处理医生分流
	public void shunt(ActivateList activateList){
		Doctor doctor = null;             //这个变量获取是哪个医生接单
		Receipt receipt = null;           //这个变量是为了得到看病病人的挂号单
		setDoctorqueue();                 //得到空闲医生队列
		Set<Receipt> receipts = new HashSet<Receipt>();    //得到医生已经就诊过的挂号单
		DoctorDao doctorDao = new DoctorDaoImpl();
		PatientDao patientDao = new PatientDaoImpl();
		if(queue.isEmpty()==true){        //没有空闲医生
			setPatientqueue();            //没有空闲医生，病人开始排队
		}else{
			doctor= queue.poll();         //赋值，得到队列的第一个医生
			receipt = patientDao.activateToReceipt(activateList); //得到挂号单
			receipts=doctor.getReceipts();
			receipts.add(receipt);
			doctor.setState(2);              //更新医生就诊
			doctor.setReceipts(receipts);    //更新医生挂号单 
			patientDao.deleteActivate(activateList);     //删掉该叫号单，因为已经开始就诊
			doctorDao.deleteWorkDoctor(doctor);
			doctorDao.update(doctor);

		}
		
		
	}
	
	//完成就诊
	public void finish(Doctor doctor){
		doctor.setState(1);                 //改变状态
		DoctorDao doctorDao = new DoctorDaoImpl();
		doctorDao.doctorWork(doctor);
		setPatientqueue();
		ActivateList activateList = null;   //得到最前排的叫号单
		if (queue_A.isEmpty()==false) {     //如果病人还正在排队，又有医生空闲了，继续分流
			activateList = queue_A.poll();
			shunt(activateList);              
		}
		
	}

    //实现将医生的就诊完成的信息显示在前台
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
	
	//实现将医生的待就诊的信息显示在前台
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
	
	//得到已经完成的就诊单子
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
    
  //得到待就诊单子
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
	public String LongToDate(long datetime){         //将long型转化成date
		Date date = new Date(datetime);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss"); 
		return sdf.format(date);
	}
	

	
}
