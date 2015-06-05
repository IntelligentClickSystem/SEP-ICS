package dao;

import java.util.List;
import java.util.Queue;

import pojo.Doctor;
import pojo.Receipt;

public interface DoctorDao {
	public boolean save(Doctor doctor);
	public Queue<Doctor> getDoctorFreeList();
	public boolean update(Doctor doctor);
	public boolean doctorWork(Doctor doctor);
	public boolean deleteWorkDoctor(Doctor doctor);
	public List<Doctor> getDepartmentDoctor(String departmentName);
	public List<Doctor> getAccordingDoctors(int type,int departmentid);//获取科室下的对应的普通医生或专家医生列表,0表示普通医生，1表示专家医生
	public List<Receipt> getTheReceiptsForDocotor(String doctorId);
	
	public List<Doctor> displayOnlineDoc();//显示在线医生
	public boolean setDoctorSchedule(String did,int date,int time,int limit);//date from 1 to 7, time from 1 to 2，预约专家号使用
	public boolean setDepartmentSchedule(int departmentid,int date,int time,int limit); //预约普通号使用
	
	

	
	
	
}
