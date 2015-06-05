package pojo;

public class Schedule {
	private int scheduleId;
	
	private int date; //from 1 to 7. Monday to Sunday
	private int time; // from 1 to 2, 1 is morning ,2 is afternoon.
	private int limit; //т╓т╪иооч
	private Doctor doctor;
	private Department department;
	
	public Doctor getDoctor() {
		return doctor;
	}
	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public int getTime() {
		return time;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getScheduleId() {
		return scheduleId;
	}
	public void setScheduleId(int scheduleId) {
		this.scheduleId = scheduleId;
	}
	
	public int getDate() {
		return date;
	}
	public void setDate(int date) {
		this.date = date;
	}
}
