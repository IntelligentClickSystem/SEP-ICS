package action;

import pojo.Patient;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PatientAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Patient patient;
	
	public String login(){
		patient = new Patient();
		patient.setId("11");
		patient.setAddress("bjtu");
		patient.setAge(22);
		patient.setEmail("12301100@bjtu.edu.cn");
		patient.setName("大鱼");
		patient.setPassword("123456");
		patient.setPhone("18811442520");
		patient.setSex("man");
		ActionContext.getContext().getSession()
		.put("patient", patient);
		
		System.out.println("dddd");
		
		return SUCCESS;
	}

	@Override
	public String execute() throws Exception {
		// TODO 自动生成的方法存根
		return super.execute();
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}	
	
	
}
