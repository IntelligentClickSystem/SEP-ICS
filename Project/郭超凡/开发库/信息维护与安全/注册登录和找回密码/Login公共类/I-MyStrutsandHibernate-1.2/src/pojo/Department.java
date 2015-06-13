package pojo;

import java.util.Set;

import org.apache.struts2.json.annotations.JSON;

public class Department {
	
	private int departmentId;
	private String departmentName;
	private String location;
	private Set doctors;
	private Set quizs;
	private Set diseases;
	private Set receipts;
	private Set schedules;
	private float commoncost;//不同科室挂普通号的费用不一样

	public float getCommoncost() {
		return commoncost;
	}
	public void setCommoncost(float commoncost) {
		this.commoncost = commoncost;
	}
	
	@JSON(serialize=false)
	public Set getSchedules() {
		return schedules;
	}
	public void setSchedules(Set schedules) {
		this.schedules = schedules;
	}
	@JSON(serialize=false)
	public Set getReceipts() {
		return receipts;
	}
	public void setReceipts(Set receipts) {
		this.receipts = receipts;
	}
	@JSON(serialize=false)
	public Set getDiseases() {
		return diseases;
	}
	public void setDiseases(Set diseases) {
		this.diseases = diseases;
	}
	@JSON(serialize=false)
	public Set getQuizs() {
		return quizs;
	}
	public void setQuizs(Set quizs) {
		this.quizs = quizs;
	}
	@JSON(serialize=false)
	public Set getDoctors() {
		return doctors;
	}
	public void setDoctors(Set doctors) {
		this.doctors = doctors;
	}
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	

}
