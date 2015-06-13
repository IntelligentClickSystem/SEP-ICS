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

        //获取前台用户输入的邮箱以及用户名
        String toMail = request.getParameter("email");
  //      String registerName = request.getParameter("userName");
        String registerName = "gcf";
        // 创建一个临时用户注册ID
        String registerId = "" + Math.random() * Math.random();
        
        //邮件发送成功后，用户点在邮箱中点击这个链接回到注册网站。        
        String url = "http://localhost:8080/JavaMailDemo/servlet/MailBackServlet?registerId="+registerId;
         
        // 设置session值，将用户ID和用户名保存在session值中
        HttpSession httpSession = request.getSession(); 
        httpSession.setAttribute(registerId, registerName); 
        // 设置session的有效时间，为10分钟，10分钟内没有点击链接的话，注册将失败
        httpSession.setMaxInactiveInterval(600); 
         
        // 设置邮箱的属性
        Properties props = new Properties();
        // 若发送者的邮箱为其他服务器，例如163邮箱的话，就将下面服务器的值改为smtp.163.com
        props.setProperty("mail.smtp.host", "smtp.qq.com"); 
        props.setProperty("mail.smtp.auth", "true"); 

        // 设置验证值，发送者的邮箱要通过验证才可以发送邮件
        // 设置发送者的邮箱和密码，对其进行修改
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
                    
                    msg.setContent("点击<a href='" + url + "'>" + url + "</a>完成注册！", "text/html;charset=utf-8"); 
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
