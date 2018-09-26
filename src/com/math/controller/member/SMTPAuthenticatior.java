package com.math.controller.member;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticatior extends Authenticator{ 
    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication("메일 ID","메일 PW");
    }
}
