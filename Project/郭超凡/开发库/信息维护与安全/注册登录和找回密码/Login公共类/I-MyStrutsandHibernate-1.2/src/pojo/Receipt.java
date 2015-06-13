package pojo;

import java.util.Date;


public class Receipt {
	
	private int id;
	private long date; //��������ʱ��
	private int type;// 0Ϊ���1Ϊ����
	private Doctor doctor;
	private Department department;
	private int state; //0��ʾδ֧����1��ʾ��֧����δ���2��ʾ�ѽ��3��ʾ��ȡ��
	private float cost; //�ö����ĺ������
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
	
	public long getDate() {
		return date;
	}
	public void setDate(long date) {
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
