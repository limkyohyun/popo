package com.a.pro.member;

public class MemberDTO {
	String id,pw,name,jumin,phone,address,email;
	public MemberDTO() {}
	public MemberDTO(String id, String pw, String name, String jumin, String phone, String address,
			String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.jumin = jumin;
		this.phone = phone;
		this.address = address;
		this.email = email;
	}
	public String getId() {
		return id;}
	public void setId(String id) {
		this.id = id;}
	public String getPw() {
		return pw;}
	public void setPw(String pw) {
		this.pw = pw;}
	public String getName() {
		return name;}
	public void setName(String name) {
		this.name = name;}
	public String getJumin() {
		return jumin;}
	public void setJumin(String jumin) {
		this.jumin = jumin;}
	public String getPhone() {
		return phone;}
	public void setPhone(String phone) {
		this.phone = phone;}
	public String getAddress() {
		return address;}
	public void setAddress(String address) {
		this.address = address;}
	public String getEmail() {
		return email;}
	public void setEmail(String email) {
		this.email = email;}
}