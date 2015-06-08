package pojo;


public class MyNewList {
	private int receiptId;
	private String receiptDate;
	private String departmentNameString;
	private String patientNameString;
	private String doctorNameString;
	private String doctorTypeString;
	public String getDoctorTypeString() {
		return doctorTypeString;
	}
	public void setDoctorTypeString(String doctorTypeString) {
		this.doctorTypeString = doctorTypeString;
	}
	public String getDoctorNameString() {
		return doctorNameString;
	}
	public void setDoctorNameString(String doctorNameString) {
		this.doctorNameString = doctorNameString;
	}
	public String getPatientNameString() {
		return patientNameString;
	}
	public void setPatientNameString(String patientNameString) {
		this.patientNameString = patientNameString;
	}
	public String getDepartmentNameString() {
		return departmentNameString;
	}
	public void setDepartmentNameString(String departmentNameString) {
		this.departmentNameString = departmentNameString;
	}
	public String getReceiptDate() {
		return receiptDate;
	}
	public void setReceiptDate(String receiptDate) {
		this.receiptDate = receiptDate;
	}
	public int getReceiptId() {
		return receiptId;
	}
	public void setReceiptId(int receiptId) {
		this.receiptId = receiptId;
	}

}
