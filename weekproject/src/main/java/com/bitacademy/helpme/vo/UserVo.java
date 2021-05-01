package com.bitacademy.helpme.vo;

public class UserVo {
	private String name;
	private long no;
	private String password;
	private String gender;
	private String join_date;
	private String id;
	
	private float point;
	private long balance;
	private String email;
	
	@Override
	public String toString() {
		return "UserVo [name=" + name + ", no=" + no + ", password=" + password + ", gender=" + gender + ", join_date="
				+ join_date + ", id=" + id + ", point=" + point + ", balance=" + balance + "]";
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getNo() {
		return no;
	}
	public void setNo(long no) {
		this.no = no;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	
	public float getPoint() {
		return point;
	}

	public void setPoint(float point) {
		this.point = point;
	}

	public long getBalance() {
		return balance;
	}
	public void setBalance(long balance) {
		this.balance = balance;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
