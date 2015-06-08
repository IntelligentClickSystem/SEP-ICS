package util;
import java.io.IOException; 
import java.util.Date; 
import java.util.Properties; 
 



import javax.mail.Address; 
import javax.mail.Authenticator; 
import javax.mail.Message.RecipientType; 
import javax.mail.MessagingException; 
import javax.mail.Transport; 
import javax.mail.internet.InternetAddress; 
import javax.mail.internet.MimeMessage; 
import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
import javax.servlet.http.HttpSession; 
 
public class RegisterServlet extends HttpServlet { 
    private static final long serialVersionUID = 1L; 
 
    public void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        //��ȡǰ̨�û�����������Լ��û���
        String toMail = request.getParameter("email");
  //      String registerName = request.getParameter("userName");
        String registerName = "gcf";
        // ����һ����ʱ�û�ע��ID
        String registerId = "" + Math.random() * Math.random();
        
        //�ʼ����ͳɹ����û����������е��������ӻص�ע����վ��        
        String url = "http://localhost:8080/JavaMailDemo/servlet/MailBackServlet?registerId="+registerId;
         
        // ����sessionֵ�����û�ID���û���������sessionֵ��
        HttpSession httpSession = request.getSession(); 
        httpSession.setAttribute(registerId, registerName); 
        // ����session����Чʱ�䣬Ϊ10���ӣ�10������û�е�����ӵĻ���ע�Ὣʧ��
        httpSession.setMaxInactiveInterval(600); 
         
        // �������������
        Properties props = new Properties();
        // �������ߵ�����Ϊ����������������163����Ļ����ͽ������������ֵ��Ϊsmtp.163.com
        props.setProperty("mail.smtp.host", "smtp.qq.com"); 
        props.setProperty("mail.smtp.auth", "true"); 

        // ������ֵ֤�������ߵ�����Ҫͨ����֤�ſ��Է����ʼ�
        // ���÷����ߵ���������룬��������޸�
        String userName = "564203455@qq.com"; 
        String password = "gcf3496893JJ"; 
        Authenticator authenticator = new MyAuthenticator(userName, password); 
         
        javax.mail.Session session = javax.mail.Session.getDefaultInstance(props,authenticator); 
        session.setDebug(true); 
         
        try{ 
                    Address from = new InternetAddress(userName); 
                    Address to = new InternetAddress(toMail); 
                    MimeMessage msg = new MimeMessage(session); 
                    msg.setFrom(from); 
                    msg.setSubject("Level-down Report"); 
                    msg.setSentDate(new Date()); 
//                    msg.setContent("Order Information <br>"
//                    		+"<hr />"
//                    		+"Order Price: 1053.83$ <br>"
//                    		+"Address: Dongyu Jiang, 18811442518, BJTU <br>"
//                    		+"<hr />"
//                    		+"Product Sheet"
//                    		+ "<table bgcolor='#F0F8FF'>"
//                    		+ "<tr>"
//                    		+ "<td> ProductName </td>"
//                            + "<td> Amount  </td>"
//                    		+ "<td> Price  </td>"
//                    		+ "</tr>"
//                    		+ "<tr>"
//                    		+ "<td> Nokia Lumia 520  </td>"
//                            + "<td> 1  </td>"
//                    		+ "<td> 1053.83$ </td>"
//                    		+ "</tr>"
//                    		+ "</table>", "text/html;charset=utf-8"); 
                    
                    msg.setContent("���<a href='" + url + "'>" + url + "</a>���ע�ᣡ", "text/html;charset=utf-8"); 
                    //msg.setContent("Click <a href='" + url + "'>" + url + " </a> to resume the account", "text/html;charset=utf-8"); 
                    msg.setRecipient(RecipientType.TO, to);  
                    Transport.send(msg); 

        } catch(MessagingException e){ 
            e.printStackTrace(); 
        } 
         
        request.getRequestDispatcher("/login.jsp").forward(request, response); 
    } 
 
    public void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException { 
        doGet(request, response); 
    } 
} 
