package dao;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class SendMail {

	    private String from;
	    private String to;
	    //private String cc;
	    private String subject;
	    private String password;
	    private String text;

	    public SendMail(String from, String to, String subject, String text, String password)
	    {
	        this.from = from;
	        this.to = to;
	        //this.cc = cc;
	        this.subject = subject;
	        this.text = text;
	        this.password = password;
	    }

	    public void send() throws Exception
	    {
	        System.out.println("Send FeedBack");
	        try 
	        {
	            Properties props = new Properties();
	            props.put("mail.smtp.host", "smtp.qq.com");
	            props.put("mail.smtp.socketFactory.port", "465");
	            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	            props.put("mail.smtp.auth", "true");
	            props.put("mail.smtp.port", "465");

	            Session session = Session.getDefaultInstance(props,new javax.mail.Authenticator(){protected PasswordAuthentication getPasswordAuthentication(){return new PasswordAuthentication(from,password);}});

	            Message message = new MimeMessage(session);
	            message.setFrom(new InternetAddress(from));
	            message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to));
	            //message.setRecipients(Message.RecipientType.CC,InternetAddress.parse(cc));
	            message.setSubject(subject);
	            //String link="www.shreerajinvestments.com";
	            message.setText(text);
	            System.out.println("MAIL");
	            Transport.send(message);
	        }
	        catch(Exception e)
	        {
	            e.printStackTrace();
	        }
	    }
}

