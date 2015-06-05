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
	public List<Doctor> getAccordingDoctors(int type,int departmentid);//��ȡ�����µĶ�Ӧ����ͨҽ����ר��ҽ���б�,0��ʾ��ͨҽ����1��ʾר��ҽ��
	public List<Receipt> getTheReceiptsForDocotor(String doctorId);
	
	public List<Doctor> displayOnlineDoc();//��ʾ����ҽ��
	public boolean setDoctorSchedule(String did,int date,int time,int limit);//date from 1 to 7, time from 1 to 2��ԤԼר�Һ�ʹ��
	public boolean setDepartmentSchedule(int departmentid,int date,int time,int limit); //ԤԼ��ͨ��ʹ��
	
	

	
	
	
}
