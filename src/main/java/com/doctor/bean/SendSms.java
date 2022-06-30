package com.doctor.bean;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class SendSms {
	public static final String ACCOUNT_SID = "AC81273469ca322b86421d9f089575b4ed";
	public static final String AUTH_TOKEN = "70511667a09aee00c3be56d4a0ec6caa";

	public static void sendSms(String number, String msg) {
		Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

		Message message = Message.creator(new PhoneNumber(number), new PhoneNumber("+17194165823"), msg).create();

		System.out.println(message.getSid());
	}
}
