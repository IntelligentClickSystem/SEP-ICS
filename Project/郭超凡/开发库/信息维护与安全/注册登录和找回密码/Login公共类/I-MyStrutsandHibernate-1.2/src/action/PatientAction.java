package action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;

import pojo.Patient;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import pojo.*;
import dao.PatientDao;
import daoImpl.*;


public class PatientAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private Patient patient;
	private List<Department> departmentList;
	private String password;
	private String pid;
	private String name;
	private int age;
	private String sex;
	private String phone;
	private String address;
	private String email;
	private String IDnumber;
	
	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIDnumber() {
		return IDnumber;
	}

	public void setIDnumber(String iDnumber) {
		IDnumber = iDnumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}	
	
	
	public List<Department> getDepartmentList() {
		return departmentList;
	}

	public void setDepartmentList(List<Department> departmentList) {
		this.departmentList = departmentList;
	}
	
	
	//处理显示科室请求
	
	public String displayDepartment(){
		departmentList = new ArrayList<Department>();
		departmentList = new PatientDaoImpl().getDepartmentAll();
		return "success";
	}

	@Override
	public String execute() throws Exception {
		// TODO 自动生成的方法存根
		return super.execute();
	}

	public String login(){
		PatientDao patientdao = new PatientDaoImpl();
		Patient patient = patientdao.isValidUser(pid,password);
		if(patient != null)
		{  
			ActionContext.getContext().getSession()
			.put("patient", patient);
			return SUCCESS;
		}
		else
		{
			return ERROR;
		}
	}


	public String regist(){
		Session session = null;
		try{
			
			session = IBaseDaoImp.getSession();
			session.beginTransaction();
			Patient registPatient = new Patient();
			PatientDao patientdao = new PatientDaoImpl();
			registPatient.setId(phone);
			registPatient.setAddress(address);
			registPatient.setAge(age);
			registPatient.setEmail(email);
			registPatient.setName(name);
			registPatient.setPassword(password);
			registPatient.setPhone(phone);
			registPatient.setSex(sex);
			registPatient.setIdcard(IDnumber);
			session.save(registPatient);
			session.getTransaction().commit();
			
		}catch(Exception e)
		{
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally
		{
			IBaseDaoImp.closeSession(session);
		}
		return SUCCESS;
	}
	
	
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		
	}	
	
}
