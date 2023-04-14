package com.a.pro.movie;

public class StillcutDTO {
	
	String mname, mposter;

	public StillcutDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public StillcutDTO(String mname, String mposter) {
		super();
		this.mname = mname;
		this.mposter = mposter;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMposter() {
		return mposter;
	}

	public void setMposter(String mposter) {
		this.mposter = mposter;
	}
	
	
	
}
