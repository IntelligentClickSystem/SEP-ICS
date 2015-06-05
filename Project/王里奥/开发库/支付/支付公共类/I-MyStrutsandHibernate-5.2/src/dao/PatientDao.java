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
	
	public List<Receipt> getReceiptAll(String pid);//获取所有订单
	public boolean payReceipt(int rid);//支付订单
	public boolean generateReceipt(String pid,String did,int departmentid);//产生订单
	public List<Department> getDepartmentAll();//获取所有的科室
	public boolean addMoney(String pid,Float amount);//由管理员在录入病人信息时进行维护
	public boolean updateMoney(String pid,Float amount);//用户消费是，对用户的信用额度进行更新，并判断能够继续消费
	
	
}
