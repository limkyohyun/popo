package com.a.pro.member;

public interface Service2 {
	public void insert(String id,String pw,String name,String jumin,String phone,String address,String email);
	public String idcheck(String id);
	public MemberDTO logincheck(String id,String pw);
}