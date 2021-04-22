package com.davi.mail;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSend {
	
	public static void naverMailSend(String email, String docking) { 
		String host = "smtp.naver.com"; 
		String user = "@naver.com"; // 아이디
		String password = ""; // 패스워드   
		
		// SMTP 서버 정보를 설정한다. 	
		Properties props = new Properties(); 
		props.put("mail.smtp.host", host); 
		props.put("mail.smtp.port", 465); 
		props.put("mail.smtp.auth", "true"); 
		props.put("mail.smtp.ssl.enable",true);
		props.put("mail.smtp.ssl.trust", host);
		
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() { 
				return new PasswordAuthentication(user, password); } }); 
		
		try { 
			MimeMessage message = new MimeMessage(session); 
			message.setFrom(new InternetAddress(user)); 
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email)); 
			
			// 메일 제목 
			message.setSubject("DAVI 비밀번호변경"); 
			try {
				docking = URLEncoder.encode(docking, "UTF-8");
			} catch (UnsupportedEncodingException e) {;}
			// 메일 내용 
			message.setContent( 
				"<a href=\"http://localhost:8084/davi_team3/member/changePw.me?docking="+docking+"&email="+email+"\">비밀번호 변경 페이지</a>",
				"text/html; charset=utf-8");
			
			Transport.send(message); 
			System.out.println("Success Message Send"); 
			}catch(MessagingException e) { e.printStackTrace(); } 
	}
	
	public static void gmailSend(String email, String docking) {
 		final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
		
		// 이메일 객체생성하기
		Properties props = System.getProperties();
		props.setProperty("mail.smtp.host", "smtp.gmail.com");
		props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
		props.setProperty("mail.smtp.socketFactory.fallback", "false");
		props.setProperty("mail.smtp.port", "465");
		props.setProperty("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.auth", "true");
		props.put("mail.debug", "true");
		props.put("mail.store.protocol", "pop3");
		props.put("mail.transport.protocol", "smtp");
		final String username = "programmerjong@gmail.com";//
		final String password = "aywlbsjaqvpskzvo";

		try{
		    Session session = Session.getDefaultInstance(props, 
		    new Authenticator(){
		    protected PasswordAuthentication getPasswordAuthentication() {
		    return new PasswordAuthentication(username, password);
		}});

		//메세지 설정
		Message msg = new MimeMessage(session);

		//보내는사람 받는사람 설정
		msg.setFrom(new InternetAddress("programmerjong@gmail.com"));
		msg.setRecipients(Message.RecipientType.TO, 
							InternetAddress.parse(email,false));
		// 메일 제목
		msg.setSubject("DAVI 비밀번호 변경");
		
		try {
			docking = URLEncoder.encode(docking, "UTF-8");
		} catch (UnsupportedEncodingException e) {;}
		
		// 메일 내용
		msg.setContent("<a href=\"http://localhost:8084/davi_team3/member/changePw.me?docking="+docking+"&email="+email+"\">비밀번호 변경 페이지</a>",
				"text/html; charset=utf-8");
		msg.setSentDate(new Date());
		Transport.send(msg);
		System.out.println("발신성공!");

		}catch (MessagingException error){ 
			System.out.println("에러가 발생했습니다: " + error);
		}
	}
}
