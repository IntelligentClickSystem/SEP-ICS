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
}
