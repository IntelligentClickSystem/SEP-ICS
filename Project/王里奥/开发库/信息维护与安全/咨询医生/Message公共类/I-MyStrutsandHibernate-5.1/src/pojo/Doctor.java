package pojo;

import java.util.Set;



public class Doctor {
	
	private String id;
	private String password;
	private String name;
	private String level;
	private int type; // 0 表示普通医生，1表示专家医生
	private String phone;
	private String email;
	private String introduction;
	private int state;
	private Set receipts;
	private Set schedules;
	private Department department;
	private float specialcost;//专家医生的挂号费用不一样，由管理员设定维护
	
	
	public float getSpecialcost() {
		return specialcost;
	}
	public void setSpecialcost(float specialcost) {
		this.specialcost = specialcost;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public Set getSchedules() {
		return schedules;
	}
	public void setSchedules(Set schedules) {
		this.schedules = schedules;
	}
	public Set getReceipts() {
		return receipts;
	}
	public void setReceipts(Set receipts) {
		this.receipts = receipts;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	

}
