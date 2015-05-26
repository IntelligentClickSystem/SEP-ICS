package pojo;

import java.util.Date;

public class Scoring {
	
	private int scoreId;
	private Date date;
	private String contents;
	private  Float effect; //包含星级的内容的类
	private Float attitude; 
	private Receipt receipt;
	
	public Receipt getReceipt() {
		return receipt;
	}
	public void setReceipt(Receipt receipt) {
		this.receipt = receipt;
	}
	public int getScoreId() {
		return scoreId;
	}
	public void setScoreId(int scoreId) {
		this.scoreId = scoreId;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	public Float getEffect() {
		return effect;
	}
	public void setEffect(Float effect) {
		this.effect = effect;
	}
	public Float getAttitude() {
		return attitude;
	}
	public void setAttitude(Float attitude) {
		this.attitude = attitude;
	}
	
	

}
