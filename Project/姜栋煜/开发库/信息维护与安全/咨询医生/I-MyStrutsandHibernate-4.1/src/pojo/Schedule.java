package pojo;

public class Schedule {
	private int scheduleId;
	
	private int date; //from 1 to 7.
	private int time; // from 1 to 2, 1 is morning ,2 is afternoon.
	public int getTime() {
		return time;
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
