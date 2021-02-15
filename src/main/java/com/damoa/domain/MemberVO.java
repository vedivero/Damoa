package com.damoa.domain;

import java.sql.Timestamp;

import org.springframework.stereotype.Repository;

@Repository
public class MemberVO {

	private String id;
	private String pw;
	private String name;
	private String gender;
	private String email;
	private String phone;
	private String addr1;
	private String addr2;
	private Timestamp reg_date;
	
	public MemberVO() {
		
	}
	
	public MemberVO(String id,String pw,String name,String gender,String email,String phone,String addr1,String add2, String addr2,Timestamp reg_date) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.reg_date = reg_date;
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
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", name=" + name + ", gender=" + gender + ", email=" + email
				+ ", phone=" + phone + ", addr1=" + addr1 + ", addr2=" + addr2 + ", reg_date=" + reg_date + "]";
	}
	
	
}
