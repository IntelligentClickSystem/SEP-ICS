package action;

import java.util.ArrayList;
import java.util.List;

import pojo.Doctor;
import pojo.Patient;
import pojo.Quiz;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.DoctorDao;


public class QuizAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int testId;
	private char answer;
	private String contents;
	private int departId;
	private Quiz quiz;
	private List<Doctor> doctorInfo;
    
	
	public int getTestId() {
		return testId;
	}
	public void setTestId(int testId) {
		this.testId = testId;
	}
	public char getAnswer() {
		return answer;
	}
	public void setAnswer(char answer) {
		this.answer = answer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getDepartId() {
		return departId;
	}
	public void setDepartId(int departId) {
		this.departId = departId;
	}
	
	public String showQuiz(){
		//System.out.println("HELLO");
		quiz = new Quiz();
		quiz.setAnswer(true);
		quiz.setContens("hahaj");
		quiz.setTestId(1);
	   	
		doctorInfo = new ArrayList<Doctor>();
		//doctorInfo = new DoctorDao().getQuizDoctor();
		
		return SUCCESS;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO 自动生成的方法存根
		return super.execute();
	}
	
	public Quiz getQuiz() {
		return quiz;
	}
	public void setQuiz(Quiz quiz) {
		this.quiz = quiz;
	}
	public List<Doctor> getDoctorInfo() {
		return doctorInfo;
	}
	public void setDoctorInfo(List<Doctor> doctorInfo) {
		this.doctorInfo = doctorInfo;
	}
}
