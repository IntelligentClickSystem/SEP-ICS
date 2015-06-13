package dao;

import java.util.List;
import java.util.Queue;

import pojo.*;

public interface DoctorDao {
	//挂号分流实现后台代码
	//------------------------------------------------------------------------------------------------------------
	public boolean save(Doctor doctor);
	public Queue<Doctor> getDoctorFreeList();
	public boolean update(Doctor doctor);
	public boolean doctorWork(Doctor doctor);
	public boolean deleteWorkDoctor(Doctor doctor);
	public List<Doctor> getDepartmentDoctor(String departmentName);
	public List<Doctor> getAccordingDoctors(int type,int departmentid);//获取科室下的对应的普通医生或专家医生列表,0表示普通医生，1表示专家医生
	public List<Receipt> getTheReceiptsForDocotor(String doctorId);
	//------------------------------------------------------------------------------------------------------------
	
	public List<Doctor> displayOnlineDoc();//显示在线医生
	public boolean setDoctorSchedule(String did,int date,int time,int limit);//date from 1 to 7, time from 1 to 2，预约专家号使用
	public boolean setDepartmentSchedule(int departmentid,int date,int time,int limit); //预约普通号使用
	//显示排班信息
	public List<Schedule> displaySchedule(int departmentid);//显示科室的schedule
	public List<Schedule> displayDoctorSchedule(String did);//显示医生的schedule
	public String[] getDoctorInfo(String did);//获取医生的具体信息
	
	//管理员录入信息
	public boolean updateDoctorInfo(String did,String newLevel,int newType,String newPhone,String newEmail,String newIntro);
	public boolean updatePatientInfo(String pid,int age,String newPhone,String newAddress,String newEmail,String idcard);


	
	
	
	

	
	
	
}
