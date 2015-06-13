package action;

import pojo.Patient;

import com.opensymphony.xwork2.ActionSupport;

import dao.PatientDao;
import daoImpl.PatientDaoImpl;
import dao.SendMail;

public class retrievePasswordAction extends ActionSupport{
	private static final long serialVersionUID = 1L;

    private String email;

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String re;

    public String execute() throws Exception
    {
		PatientDao patientdao = new PatientDaoImpl();
		Patient patient = patientdao.findPassword(email);
		String findPassword = patient.getPassword();
		String findUserName = patient.getId();
		
        System.out.println("Send FeedBack");
        try
        {
                addActionMessage("Your FeedBack is Send Successfully");

                String from = "564203455@qq.com";
                String to = email;
                String subject = "’“ªÿ√‹¬Î";
                String text = "UserName:\t"+findUserName+"\n"+"Password:\t"+findPassword;
                String password = "gcf3496893JJ";
                System.out.println("password:"+password);
                SendMail SendMail = new SendMail(from, to, subject, text, password);
                SendMail.send();

                re=SUCCESS;
        }
        catch(Exception ex)
        {
            System.out.println("Connection Failed: "+ex);
            ex.printStackTrace();
        }
        return re;
    }
}
