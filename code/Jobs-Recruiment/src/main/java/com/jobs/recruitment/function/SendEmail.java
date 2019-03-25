//package com.jobs.recruitment.function;
//
//import java.text.SimpleDateFormat;
//import java.util.Date;
//import java.util.Properties;
//
//import javax.mail.Message;
//import javax.mail.MessagingException;
//import javax.mail.PasswordAuthentication;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//
//import com.internship.mobileshop.model.InforPayment;
//
//public class SendEmail {
//	
//	public void emailHandler(InforPayment info)
//	{
//		final String username = "phuongnambr1997@gmail.com";
//		final String password = "phuongnam24121997";
//
//		Properties props = new Properties();
//		props.put("mail.smtp.host", "smtp.gmail.com");
//		props.put("mail.smtp.socketFactory.port", "465");
//		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//		props.put("mail.smtp.auth", "true");
//		props.put("mail.smtp.port", "465");
//
//		Session session = Session.getInstance(props,
//		  new javax.mail.Authenticator() {
//			protected PasswordAuthentication getPasswordAuthentication() {
//				return new PasswordAuthentication(username, password);
//			}
//		  });
//
//		try {
//
//			Message message = new MimeMessage(session);
//			message.setFrom(new InternetAddress("phuongnambr1997@gmail.com"));
//			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(info.getEmail()));
//			message.setSubject("Booking Confirmation in TUAN MOBILE on " + getNow());
//			message.setText("Dear " + info.getName() + ","
//					+ "\n\nBooking device Successful " + getNow() + "."
//					+"\n\n	Device: "+info.getName()
//					+"\n	Color: "+info.getColorDevice()
//					+"\n	Memory: "+info.getMemoryDevice()
//					+"\n	Qty: 1"
//					+"\n	Total: "+info.getPrice()
//					+"\n	Customer: "+info.getName()
//					+"\n	Phone: "+info.getPhone()
//					+"\n	Address: "+info.getAddress()
//					+ "\n\nRegards,"
//					+ "\nTUAN MOBILE.");
//
//			Transport.send(message);
//
//			System.out.println("Done");
//
//		} catch (MessagingException e) {
//			throw new RuntimeException(e);
//		}
//
//	}
//
//	private String getNow()
//	{
//		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
//	    Date date = new Date();
//	    return formatter.format(date).toString();
//	}
//	
//}
//
