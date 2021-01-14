package com.damoa.domain;

import java.sql.Timestamp;

public class MemberVO {

	private int m_no;
	private String id;
	private String pw;
	private String name;
	private String birth;
	private String gender;
	private String email;
	private String phone;
	private String addr1;
	private String addr2;
	private Timestamp reg_date;
	
	public MemberVO(int m_no,String id,String pw,String name,String birth,String gender,
			String email,String phone,String addr1,String addr2, Timestamp reg_date) {
		super();
		this.m_no = m_no;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.reg_date = reg_date;
	}
	
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	
	@Override
	public String toString() {
		return "MemberVO [m_no=" + m_no + ", id=" + id + ", pw=" + pw + ", name=" + name + ", birth=" + birth
				+ ", gender=" + gender + ", email=" + email + ", phone=" + phone + ", reg_date=" + reg_date + "]";
	}
	
	
	
}
