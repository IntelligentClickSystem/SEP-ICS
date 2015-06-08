package action;

import pojo.Doctor;

import com.opensymphony.xwork2.ActionSupport;

public class DoctorAction extends ActionSupport{
	private Doctor doctor;

	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	
	public String getDoctorInfo(String id){
		doctor = new Doctor();
				
		return id;
	}
}
