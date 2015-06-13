package dao;

import java.util.List;
import java.util.Queue;

import pojo.*;

public interface PatientDao {
	public boolean save(Patient patient);
	public boolean creatReceipts(Patient patient);
	public boolean updatePatient(Patient patient);
	public boolean activateL(Receipt receipt);
	public Receipt activateToReceipt(ActivateList activateList);
	public boolean deleteActivate(ActivateList activateList);
	public Queue<ActivateList> getActivateLists();
	
	public List<Receipt> getReceiptAll(String pid);//��ȡ���ж���
	public boolean payReceipt(int rid);//֧������
	public int generateReceipt(String pid,String did,int departmentid,long datetime);//�������������ض���id��
	public List<Department> getDepartmentAll();//��ȡ���еĿ���
	public boolean addMoney(String pid,Float amount);//�ɹ���Ա��¼�벡����Ϣʱ����ά��
	public boolean updateMoney(String pid,Float amount);//�û������ǣ����û������ö�Ƚ��и��£����ж��ܹ���������
	public String[] getPatientInfo(String pid);//ȷ��ԤԼ���л�ȡ���˵���Ϣ�����ز��˵����֤�ź͵绰��
	public String getPatientName(String pid);//��ȡ�����˵�����
	public String getPatientPhone(String pid);//��ȡ�û��ֻ���
	public String getPatientIdcard(String pid);//��ȡ�û����֤
	public String[] getDepartmentInfo(int id);//��ȡ���Ҿ�����Ϣ
	public float getCost(int departmentid,String did);//��ȡ����
	//��¼ע�ᣬ�һ�����
	public Patient isValidUser(String username, String password);
	public Patient findPassword(String email);
	public Patient registPatient(Patient patient);
	
	
	
	
	
}
