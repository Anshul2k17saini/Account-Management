package com.SendEmail;

import java.util.*;  
import javax.mail.*;  
import javax.mail.internet.*;  
import javax.activation.*;  
  
public class SendEmail  
{  
	String Email;
	String messages;
   //change accordingly  
   // String host = "mail.smtp.localhost";
    //String host="mail.javatpoint.com";  
    final String user="Anshul2k17saini@gmail.com";//change accordingly  
    final String password="a9810366041";//change accordingl

	 public SendEmail(String Email,String messages) {
			this.Email = Email;
			this.messages=messages;
			}	  
	 String to = Email;
 public  void mail()
  {  
	 
	   Properties props = new Properties();  
	   props.put("mail.smtp.auth", "true");  
	   props.put("mail.smtp.starttls.enable", "true");
	   props.put("mail.smtp.host", "smtp.gmail.com");  
	   props.put("mail.smtp.port", "587");  
	   
	     
	   Session session = Session.getDefaultInstance(props,  
	    new javax.mail.Authenticator() {  
	    protected PasswordAuthentication getPasswordAuthentication() {  
	    return new PasswordAuthentication(user,password);  
	      }  
	    });  
     //compose the message  
      try {  
    	     MimeMessage message = new MimeMessage(session);  
    	     message.setFrom(new InternetAddress(user));  
    	     message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
    	     message.setSubject("javatpoint");  
    	     message.setText("This is simple program of sending email using JavaMail API");  
    	       
    	    //send the message  
    	     Transport.send(message);  
    	  
    	     System.out.println("message sent successfully...");  
    	   
    	     } catch (MessagingException e) {e.printStackTrace();}  
    	 }  
}  
