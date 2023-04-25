package com.a.pro.movie;

public class MovieTicketDTO {

	String id,day,mname,time,seat,pay;
	public MovieTicketDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MovieTicketDTO(String id, String day, String mname, String time, String seat, String pay) {
		super();
		this.id = id;
		this.day = day;
		this.mname = mname;
		this.time = time;
		this.seat = seat;
		this.pay = pay;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}


	
}
