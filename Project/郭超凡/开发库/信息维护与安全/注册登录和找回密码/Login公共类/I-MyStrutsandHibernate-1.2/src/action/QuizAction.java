package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import pojo.Doctor;
import pojo.Patient;
import pojo.Quiz;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.DoctorDao;
import daoImpl.QuizDaoImpl;


public class QuizAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int testId;
	private String contents;
	private int departId;
	private Quiz quiz;
	private List<Quiz> quizlist;

	private String descrip;
	
	public String getDescrip() {
		return descrip;
	}
	public void setDescrip(String descrip) {
		this.descrip = descrip;
	}
	
	public List<Quiz> getQuizlist() {
		return quizlist;
	}
	public void setQuizlist(List<Quiz> quizlist) {
		this.quizlist = quizlist;
	}
	public int getTestId() {
		return testId;
	}
	public void setTestId(int testId) {
		this.testId = testId;
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
		quizlist = new ArrayList<Quiz>();
		System.out.println("ddd:"+descrip);
		if(!descrip.equals("")){
		quizlist = new QuizDaoImpl().isValidAnswer(descrip);
		}
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

}
