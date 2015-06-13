package dao;

import java.util.List;
import java.util.Queue;

import pojo.*;

public interface DoctorDao {
	//�Һŷ���ʵ�ֺ�̨����
	//------------------------------------------------------------------------------------------------------------
	public boolean save(Doctor doctor);
	public Queue<Doctor> getDoctorFreeList();
	public boolean update(Doctor doctor);
	public boolean doctorWork(Doctor doctor);
	public boolean deleteWorkDoctor(Doctor doctor);
	public List<Doctor> getDepartmentDoctor(String departmentName);
	public List<Doctor> getAccordingDoctors(int type,int departmentid);//��ȡ�����µĶ�Ӧ����ͨҽ����ר��ҽ���б�,0��ʾ��ͨҽ����1��ʾר��ҽ��
	public List<Receipt> getTheReceiptsForDocotor(String doctorId);
	//------------------------------------------------------------------------------------------------------------
	
	public List<Doctor> displayOnlineDoc();//��ʾ����ҽ��
	public boolean setDoctorSchedule(String did,int date,int time,int limit);//date from 1 to 7, time from 1 to 2��ԤԼר�Һ�ʹ��
	public boolean setDepartmentSchedule(int departmentid,int date,int time,int limit); //ԤԼ��ͨ��ʹ��
	//��ʾ�Ű���Ϣ
	public List<Schedule> displaySchedule(int departmentid);//��ʾ���ҵ�schedule
	public List<Schedule> displayDoctorSchedule(String did);//��ʾҽ����schedule
	public String[] getDoctorInfo(String did);//��ȡҽ���ľ�����Ϣ
	
	//����Ա¼����Ϣ
	public boolean updateDoctorInfo(String did,String newLevel,int newType,String newPhone,String newEmail,String newIntro);
	public boolean updatePatientInfo(String pid,int age,String newPhone,String newAddress,String newEmail,String idcard);


	
	
	
	

	
	
	
}
