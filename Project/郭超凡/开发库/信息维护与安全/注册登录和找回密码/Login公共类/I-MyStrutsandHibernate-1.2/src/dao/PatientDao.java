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
	
	public List<Receipt> getReceiptAll(String pid);//获取所有订单
	public boolean payReceipt(int rid);//支付订单
	public int generateReceipt(String pid,String did,int departmentid,long datetime);//产生订单，返回订单id号
	public List<Department> getDepartmentAll();//获取所有的科室
	public boolean addMoney(String pid,Float amount);//由管理员在录入病人信息时进行维护
	public boolean updateMoney(String pid,Float amount);//用户消费是，对用户的信用额度进行更新，并判断能够继续消费
	public String[] getPatientInfo(String pid);//确认预约单中获取病人的信息，返回病人的身份证号和电话号
	public String getPatientName(String pid);//获取就诊人的姓名
	public String getPatientPhone(String pid);//获取用户手机号
	public String getPatientIdcard(String pid);//获取用户身份证
	public String[] getDepartmentInfo(int id);//获取科室具体信息
	public float getCost(int departmentid,String did);//获取费用
	//登录注册，找回密码
	public Patient isValidUser(String username, String password);
	public Patient findPassword(String email);
	public Patient registPatient(Patient patient);
	
	
	
	
	
}
