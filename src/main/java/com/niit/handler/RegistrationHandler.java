package com.niit.handler;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.niit.bean.CustomerDetails;
@Component
public class RegistrationHandler 
{
	public CustomerDetails initFlow()
	{
	return new CustomerDetails();
	}

	public String validateDetails(CustomerDetails customerDetails , MessageContext messageContext)
	{System.out.println("webflow");
	 String status="success";
	 if(customerDetails.getCustName().isEmpty())
	 {
	   messageContext.addMessage(new MessageBuilder().error().source("custName").defaultText("Name cannot be Empty").build());
	   status="faliure";
	 }
	 if(customerDetails.getPermanent_address().isEmpty())
	 {
	   messageContext.addMessage(new MessageBuilder().error().source("permanent_address").defaultText("Address cannot be Empty").build());
	   status="faliure";
	 }
	 if(customerDetails.getPhone_no1().isEmpty())
	 {
	   messageContext.addMessage(new MessageBuilder().error().source("phone_no1").defaultText("Phone NO. cannot be Empty").build());
	   status="faliure";
	 }
	 if(customerDetails.getPhone_no2().isEmpty())
	 {
	   messageContext.addMessage(new MessageBuilder().error().source("phone_no2").defaultText("Phone NO. cannot be Empty").build());
	   status="faliure";
	 }
	 if(customerDetails.getEmail_id().isEmpty())
	 {
	   messageContext.addMessage(new MessageBuilder().error().source("email_id").defaultText("Email ID cannot be Empty").build());
	   status="faliure";
	 }
	 return status;
	}
}
