package dao;

import java.util.List;
import java.util.Queue;

import pojo.ActivateList;
import pojo.Patient;
import pojo.Receipt;
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
	public boolean generateReceipt(String pid,String did,int departmentid);//��������
	public List<Department> getDepartmentAll();//��ȡ���еĿ���
	public boolean addMoney(String pid,Float amount);//�ɹ���Ա��¼�벡����Ϣʱ����ά��
	public boolean updateMoney(String pid,Float amount);//�û������ǣ����û������ö�Ƚ��и��£����ж��ܹ���������
	
	
}
