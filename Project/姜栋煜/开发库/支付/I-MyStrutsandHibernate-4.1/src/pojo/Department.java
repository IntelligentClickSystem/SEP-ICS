package pojo;

import java.util.Set;

public class Department {
	
	private int departmentId;
	private String departmentName;
	private String location;
	private Set doctors;
	private Set quizs;
	private Set diseases;
	private Set receipts;

	public Set getReceipts() {
		return receipts;
	}
	public void setReceipts(Set receipts) {
		this.receipts = receipts;
	}
	public Set getDiseases() {
		return diseases;
	}
	public void setDiseases(Set diseases) {
		this.diseases = diseases;
	}
	public Set getQuizs() {
		return quizs;
	}
	public void setQuizs(Set quizs) {
		this.quizs = quizs;
	}
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
