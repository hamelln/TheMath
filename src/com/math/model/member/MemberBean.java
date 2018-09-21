package com.math.model.member;

import java.util.Date;

public class MemberBean {
	private String email;
	private String name;
	private String pw;
	private Date join_date;
	
	public MemberBean() {}
	
	public MemberBean(String email, String name, String pw, Date join_date) {
		this.email = email;
		this.name = name;
		this.pw = pw;
		this.join_date = join_date;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	@Override
	public String toString() {
		return "Member [email=" + email + ", name=" + name + ", pw=" + pw + ", join_date=" + join_date + "]";
	}
	
}
