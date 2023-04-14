package com.a.pro.event;

public class EventDTO {
	int ebun;
String ename,startday,endday,show,eposter;
int readcnt, groups,step,indent;
String eposterdetail;

public EventDTO() {
	super();
	// TODO Auto-generated constructor stub
}

public EventDTO(int ebun, String ename, String startday, String endday, String show, String eposter, int readcnt,
		int groups, int step, int indent, String eposterdetail) {
	super();
	this.ebun = ebun;
	this.ename = ename;
	this.startday = startday;
	this.endday = endday;
	this.show = show;
	this.eposter = eposter;
	this.readcnt = readcnt;
	this.groups = groups;
	this.step = step;
	this.indent = indent;
	this.eposterdetail = eposterdetail;
}

public int getEbun() {
	return ebun;
}

public void setEbun(int ebun) {
	this.ebun = ebun;
}

public String getEname() {
	return ename;
}

public void setEname(String ename) {
	this.ename = ename;
}

public String getStartday() {
	return startday;
}

public void setStartday(String startday) {
	this.startday = startday;
}

public String getEndday() {
	return endday;
}

public void setEndday(String endday) {
	this.endday = endday;
}

public String getShow() {
	return show;
}

public void setShow(String show) {
	this.show = show;
}

public String getEposter() {
	return eposter;
}

public void setEposter(String eposter) {
	this.eposter = eposter;
}

public int getReadcnt() {
	return readcnt;
}

public void setReadcnt(int readcnt) {
	this.readcnt = readcnt;
}

public int getGroups() {
	return groups;
}

public void setGroups(int groups) {
	this.groups = groups;
}

public int getStep() {
	return step;
}

public void setStep(int step) {
	this.step = step;
}

public int getIndent() {
	return indent;
}

public void setIndent(int indent) {
	this.indent = indent;
}

public String getEposterdetail() {
	return eposterdetail;
}

public void setEposterdetail(String eposterdetail) {
	this.eposterdetail = eposterdetail;
}



}