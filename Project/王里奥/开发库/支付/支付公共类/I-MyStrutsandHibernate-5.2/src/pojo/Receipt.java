package pojo;

import java.util.Date;


public class Receipt {
	
	private int id;
	private Date date;
	private Date datetime; //订单创建时间
	private int type;// 0为初诊，1为复诊
	private Doctor doctor;
	private Department department;
	private int state; //0表示未支付，1表示已支付，未接诊，2表示已接诊，3表示已取消
	private float cost; //该订单的核算费用
	private Patient patient;
	
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	

	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public Doctor getDoctor() {
		return doctor;
	}
	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public float getCost() {
		return cost;
	}
	public void setCost(float cost) {
		this.cost = cost;
	}
	
	
	

}
